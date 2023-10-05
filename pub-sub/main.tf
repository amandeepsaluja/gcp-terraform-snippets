# create a Pub/Sub topic
resource "google_pubsub_topic" "sample_pubsub_topic" {
  name                       = var.topic_name
  message_retention_duration = var.message_retention_duration

  # these settings are done below seprately to test it out
  schema_settings {
    schema   = "projects/${var.project_id}/schemas/${google_pubsub_schema.schema_example.name}"
    encoding = "JSON"
  }
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

# create a Pub/Sub topic schema
resource "google_pubsub_schema" "schema_example" {
  name       = var.schema_name
  type       = var.schema_type
  definition = <<EOF
{
  "type": "record",
  "name": "sample",
  "fields": [
    {
      "name": "id",
      "type": "int"
    },
    {
      "name": "message",
      "type": "string"
    }
  ]
}
EOF
}
