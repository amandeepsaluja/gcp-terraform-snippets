# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_dataset

# Create a dataset
resource "google_bigquery_dataset" "dataset" {
  dataset_id    = var.dataset_id
  friendly_name = var.dataset_friendly_name
  description   = var.dataset_description
  location      = var.dataset_location
}
