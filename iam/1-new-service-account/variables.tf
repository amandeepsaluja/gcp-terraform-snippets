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
  default     = ""
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

# Pool variables
variable "workload_identity_pool_id" {
  type        = string
  description = "Workload identity pool ID"
  default     = "github-cloud-composer-pool"
}

variable "workload_identity_pool_name" {
  type        = string
  description = "Workload identity pool Name"
  default     = "GitHub Pool"
}

variable "workload_identity_pool_description" {
  type        = string
  description = "Workload identity pool Description"
  default     = "Workload identity pool for GitHub gcp-airflow-cloud-composer-pipeline repository"
}

# Provider variables
variable "workload_identity_provider_id" {
  type        = string
  description = "Workload identity provider ID"
  default     = "github-cloud-composer-provider"
}

variable "workload_identity_provider_name" {
  type        = string
  description = "Workload identity provider Name"
  default     = "GitHub Provider"
}

variable "workload_identity_provider_description" {
  type        = string
  description = "Workload identity provider Description"
  default     = "Workload identity provider for GitHub gcp-airflow-cloud-composer-pipeline repository"
}



