# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_dataset

# Create a dataset
resource "google_bigquery_dataset" "datasets" {

  for_each = local.datasetsMap

  dataset_id  = each.value["dataset_id"]
  description = each.value["description"]
  location    = each.value["location"]
}
