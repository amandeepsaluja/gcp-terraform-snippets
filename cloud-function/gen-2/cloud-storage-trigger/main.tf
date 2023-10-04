resource "google_cloudfunctions2_function" "this" {
  name        = var.name
  location    = var.location
  description = var.description
  project     = var.project_id

  build_config {
    runtime     = var.runtime
    entry_point = var.entry_point

    source {
      storage_source {
        bucket = google_storage_bucket.this.id
        object = google_storage_bucket_object.this.name
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

# creating the zip file
data "archive_file" "this" {
  type        = "zip"
  output_path = "/tmp/${var.name}.zip"
  source_dir  = "${path.module}/../src"
}

# generating zip file name for the cloud function
locals {
  cf_zip_archive_name = "${var.name}-${data.archive_file.this.output_sha}.zip"
}

# uploading the zip file to the bucket
resource "google_storage_bucket_object" "this" {
  name   = local.cf_zip_archive_name
  bucket = google_storage_bucket.cf_source_archive_bucket.name
  source = data.archive_file.this.output_path
}
