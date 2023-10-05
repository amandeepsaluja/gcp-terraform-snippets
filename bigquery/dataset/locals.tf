locals {
  datasetsArray = jsondecode(file("datasets_with_tables.json"))
  datasetsMap   = { for idx, val in local.datasetsArray : idx => val }
}
