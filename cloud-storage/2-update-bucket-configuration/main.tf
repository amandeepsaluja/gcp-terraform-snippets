# updating the bucket to enable versioning

resource "google_storage_bucket" "object_versioning" {
  name     = var.bucket_name
  location = var.bucket_location

  versioning = true
}