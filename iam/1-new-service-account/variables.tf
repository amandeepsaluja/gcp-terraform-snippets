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

variable "account_id" {
  type        = string
  description = "Service account ID"
  default     = "github-cloud-composer-sa"
}

variable "display_name" {
  type        = string
  description = "Service account display name"
  default     = "GitHub gcp-airflow-cloud-composer-pipeline Repository"
}

variable "description" {
  type        = string
  description = "Service account description"
  default     = "Service account for GitHub gcp-airflow-cloud-composer-pipeline repository"
}

