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

variable "topic_name" {
  type        = string
  description = "Google pubsub topic name"
  default     = "sample-pubsub-topic-via-terraform"
}

variable "message_retention_duration" {
  type        = string
  description = "Google pubsub topic message retention duration"
  default     = "86600s"
}
