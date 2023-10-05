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
  default     = "4800s"
}

variable "subscription_name" {
  type        = string
  description = "Google pubsub subscription name"
  default     = "sample-pubsub-subscription-via-terraform"
}

variable "retain_acked_messages" {
  type        = bool
  description = "Google pubsub subscription retain acked messages"
  default     = false
}

variable "ack_deadline_seconds" {
  type        = number
  description = "Google pubsub subscription ack deadline seconds"
  default     = 20
}

variable "ttl" {
  type        = string
  description = "Google pubsub subscription ttl"
  default     = "4800s" # 60 minutes
}

variable "minimum_backoff" {
  type        = string
  description = "Google pubsub subscription minimum backoff"
  default     = "10s"
}

variable "enable_message_ordering" {
  type        = bool
  description = "Google pubsub subscription enable message ordering"
  default     = false
}
