# updating the bucket to enable versioning

resource "google_storage_bucket" "versioning" {
  name     = var.bucket_name
  location = var.bucket_location

  versioning {
    enabled = true
  }

  lifecycle_rule {
    condition {
      num_newer_versions = 3
    }
    action {
      type = "Delete"
    }
  }
}