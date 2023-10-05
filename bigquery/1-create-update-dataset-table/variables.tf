
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

variable "dataset_id" {
  type        = string
  description = "BigQuery dataset ID"
  default     = "dataflow-raw"
}

variable "dataset_friendly_name" {
  type        = string
  description = "BigQuery dataset friendly name"
  default     = "dataflow-raw-dataset"
}

variable "dataset_description" {
  type        = string
  description = "BigQuery dataset description"
  default     = "A raw dataset to export raw data from dataflow"
}

variable "dataset_location" {
  type        = string
  description = "BigQuery dataset location"
  default     = "US"
}