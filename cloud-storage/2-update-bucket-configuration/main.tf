# updating the bucket to enable versioning

resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  location = var.bucket_location

  versioning {
    enabled = true
  }
}