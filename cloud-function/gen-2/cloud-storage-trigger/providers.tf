provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "gcp-practice-project-aman-terraform-state-bucket"
    prefix = "cloud-function/gen-2/cloud-storage-trigger"
  }
}
