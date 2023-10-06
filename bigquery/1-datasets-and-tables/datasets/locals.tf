locals {
  datasetsArray = jsondecode(file("${path.module}/../configs/datasets-tables/datasets_tables_info.json"))
  datasetsMap   = { for idx, val in local.datasetsArray : idx => val }
}
