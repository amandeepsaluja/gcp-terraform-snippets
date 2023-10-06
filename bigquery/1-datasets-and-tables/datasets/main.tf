# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_dataset

# Create a dataset
resource "google_bigquery_dataset" "datasets" {

  for_each = local.datasetsMap

  dataset_id  = each.value["dataset_id"]
  description = each.value["description"]
  location    = each.value["location"]

  default_table_expiration_ms = try(each.value["default_table_expiration_ms "], null)
  labels                      = try(each.value["labels"], null)
  is_case_insensitive         = try(each.value["is_case_insensitive"], null)
  max_time_travel_hours       = try(each.value["max_time_travel_hours"], null)

}
