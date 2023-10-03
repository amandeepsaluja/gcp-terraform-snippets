resource "google_storage_bucket" "bucket" {
  name     = var.new_bucket_name
  location = var.new_bucket_location
}