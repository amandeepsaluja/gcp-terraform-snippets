module "bigquery_dataset" {
  source = "./datasets"
}

module "bigquery_table" {
  source = "./tables"
}
