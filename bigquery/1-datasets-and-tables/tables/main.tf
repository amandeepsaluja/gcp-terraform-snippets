
resource "google_bigquery_table" "tables" {
  for_each = { for idx, table in local.tables_flattened : "${table["dataset_id"]}_${table["table_id"]}" => table }

  dataset_id = each.value["dataset_id"]
  table_id   = each.value["table_id"]
  clustering = each.value["clustering"]

  dynamic "time_partitioning" {
    for_each = each.value["partitionType"] != null ? [1] : []

    content {
      type                     = each.value["partitionType"]
      field                    = each.value["partitionField"]
      expiration_ms            = each.value["expirationMs"]
      require_partition_filter = each.value["requirePartitionFilter"]
    }
  }

  schema = file("${path.module}/${each.value["table_schema_path"]}")
}
