# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket


# set up project details
provider "google" {
  project     = "gcp-practice-project-aman"
  region      = "us-central1"
  zone        = "us-central1-c"
}


# create bucket called as gcp-practice-project-aman-terraform-bucket
resource "google_storage_bucket" "static" {
 name          = "gcp-practice-project-aman-terraform-bucket"
 location      = "US"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true
}