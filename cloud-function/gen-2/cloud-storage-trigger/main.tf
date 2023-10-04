# generating zip file name for the cloud function
locals {
  cf_zip_archive_name = "${var.cloud_function_name}-${data.archive_file.cf_source_zip.output_sha}.zip"
}

# creating the zip file
data "archive_file" "cf_source_zip" {
  type        = "zip"
  output_path = "/tmp/${var.name}.zip"
  source_dir  = "${path.module}/../src"
}

# uploading the zip file to the bucket
resource "google_storage_bucket_object" "cf_source_zip" {
  name         = local.cf_zip_archive_name
  source       = data.archive_file.cf_source_zip.output_path
  content_type = "application/zip"
  bucket       = google_storage_bucket.cf_source_archive_bucket.name
}


resource "google_cloudfunctions2_function" "function" {
  name        = var.name
  location    = var.location
  description = var.description
  project     = var.project_id

  build_config {
    runtime     = var.runtime
    entry_point = var.entry_point

    source {
      storage_source {
        bucket = google_storage_bucket.function.id
        object = google_storage_bucket_object.function.name
      }
    }
  }

  service_config {
    min_instance_count             = var.min_instance_count
    max_instance_count             = var.max_instance_count
    timeout_seconds                = var.timeout_seconds
    ingress_settings               = var.ingress_settings
    all_traffic_on_latest_revision = var.all_traffic_on_latest_revision
  }
}