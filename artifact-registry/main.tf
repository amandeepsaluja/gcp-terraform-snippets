# Create a Docker Artifact repository
resource "google_artifact_registry_repository" "my-repo" {

  location      = var.repository_location
  repository_id = var.repository_name
  description   = var.repository_description
  format        = var.repository_format
}
