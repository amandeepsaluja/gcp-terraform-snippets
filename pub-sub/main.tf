# create a Pub/Sub topic
resource "google_pubsub_topic" "sample_pubsub_topic" {
  name                       = var.topic_name
  message_retention_duration = var.message_retention_duration
}
