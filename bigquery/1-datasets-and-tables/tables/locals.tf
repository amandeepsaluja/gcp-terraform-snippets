
locals {
  datasetsArray = jsondecode(file("${path.module}/../configs/datasets-tables/datasets_tables_info.json"))
  datasetsMap   = { for idx, val in local.datasetsArray : idx => val }
  tables_flattened = flatten([
    for dataset in local.datasetsMap : [
      for table in dataset["tables"] : {
        dataset_id             = dataset["dataset_id"]
        table_id               = table["table_id"]
        table_schema_path      = table["table_schema_path"]
        partitionType          = try(table["partitionType"], null)
        partitionField         = try(table["partitionField"], null)
        expirationMs           = try(table["expirationMs"], null)
        requirePartitionFilter = try(table["requirePartitionFilter"], null)
        clustering             = try(table["clustering"], [])
      }
    ]
  ])
}
