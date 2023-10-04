# Create the Cloud function triggered by a `Finalize` event on the bucket

resource "google_cloudfunctions2_function" "function" {
  
    name                  = var.cloud_function_name
    runtime               = "python39"
    location              = var.region

    build_config {
      entry_point = "hello_gcs"
      source      = "src"
      runtime = "python39"
    }

    service_config {
      max_instance_count  = 5
      min_instance_count = 0
      available_memory    = "256M"
      timeout_seconds     = 60
      ingress_settings = "ALLOW_INTERNAL_ONLY"
      all_traffic_on_latest_revision = true
    }

    event_trigger {
      event_type = "google.storage.object.finalize"
      resource   = ${var.source_cloud_storage}
    }
}