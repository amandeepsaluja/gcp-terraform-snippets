provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "gcp-practice-project-aman-terraform-state-bucket"
    prefix = "iam/1-new-service-account"
  }
}
