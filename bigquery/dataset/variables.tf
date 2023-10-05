
variable "project_id" {
  type        = string
  description = "Google project ID"
  default     = "gcp-practice-project-aman"
}

variable "region" {
  type        = string
  description = "Google project region"
  default     = "us-central1"
}

# variable "dataset_id" {
#   type        = string
#   description = "BigQuery dataset ID"
#   default     = "dataflow_raw"
# }

# variable "dataset_friendly_name" {
#   type        = string
#   description = "BigQuery dataset friendly name"
#   default     = "dataflow_raw_dataset"
# }

# variable "dataset_description" {
#   type        = string
#   description = "BigQuery dataset description"
#   default     = "Dataset to export raw data from dataflow"
# }

# variable "dataset_location" {
#   type        = string
#   description = "BigQuery dataset location"
#   default     = "US"
# }

# variable "table_id" {
#   type        = string
#   description = "BigQuery table ID"
#   default     = "pub_sub_data"
# }
