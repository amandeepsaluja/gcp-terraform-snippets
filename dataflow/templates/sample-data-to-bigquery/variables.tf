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

variable "gcp_auth_token" {
}
