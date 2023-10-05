locals {
  datasetsArray = jsondecode(file("${path.module}/datasets_info.json"))
  datasetsMap   = { for idx, val in local.datasetsArray : idx => val }
}
