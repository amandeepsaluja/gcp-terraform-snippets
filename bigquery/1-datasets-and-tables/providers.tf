provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "gcp-practice-project-aman-terraform-state-bucket"
    prefix = "bigquery/1-datasets-and-tables"
  }
}
