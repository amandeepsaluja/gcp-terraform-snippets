provider "docker" {

  alias = "gcr_provider"

  registry_auth {
    address  = "us-central1-docker.pkg.dev"
    username = "oauth2accesstoken"
    password = var.gcp_auth_token
  }
}

resource "docker_registry_image" "dataflow_image" {

  provider      = docker.gcr_provider
  name          = docker_image.gar_image.name
  keep_remotely = true

}

resource "docker_image" "gar_image" {

  provider = docker.gcr_provider

  name = "us-central1-docker.pkg.dev/${var.project_id}/dataflow-templates/gar-template:latest"

  build {
    context    = "."
    dockerfile = "Dockerfile"
  }
}
