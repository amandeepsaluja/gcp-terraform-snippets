# create a Pub/Sub topic
resource "google_pubsub_topic" "sample_pubsub_topic" {
  name                       = var.topic_name
  message_retention_duration = var.message_retention_duration
}

# create a Pub/Sub subscription
resource "google_pubsub_subscription" "sample_pubsub_subscription" {
  name  = var.subscription_name
  topic = google_pubsub_topic.sample_pubsub_topic.name

  message_retention_duration = var.message_retention_duration
  retain_acked_messages      = var.retain_acked_messages
  ack_deadline_seconds       = var.ack_deadline_seconds
  expiration_policy {
    ttl = var.ttl
  }
  retry_policy {
    minimum_backoff = var.minimum_backoff
  }
  enable_message_ordering = var.enable_message_ordering
}