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

variable "repository_name" {
  type        = string
  description = "Artifact Registry repository name"
  default     = "dataflow-templates"
}

variable "repository_location" {
  type        = string
  description = "Artifact Registry repository location"
  default     = "us-central1"
}

variable "repository_format" {
  type        = string
  description = "Artifact Registry repository format"
  default     = "docker"
}

variable "repository_description" {
  type        = string
  description = "Artifact Registry repository description"
  default     = "Dataflow templates repository"
}
