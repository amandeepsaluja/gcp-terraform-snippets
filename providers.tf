provider "google" {
  project = var.project_id
  region = var.region
}

terraform {
    backend "gcs" { 
      bucket  = var.terraform_state_bucket
      prefix  = var.terraform_state_bucket_prefix
    }
}