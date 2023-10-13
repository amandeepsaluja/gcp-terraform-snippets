# create a new service account
resource "google_service_account" "service_account" {
  account_id   = var.account_id
  display_name = var.display_name
  description  = var.description
}

# create workload identity pool
resource "google_iam_workload_identity_pool" "workload_identity_pool" {
  workload_identity_pool_id = var.workload_identity_pool_id
  display_name              = var.workload_identity_pool_name
  description               = var.workload_identity_pool_description
}

# create workload identity provider
resource "google_iam_workload_identity_pool_provider" "provider" {
  workload_identity_pool_id          = var.workload_identity_pool_id
  workload_identity_pool_provider_id = var.workload_identity_provider_id
  display_name                       = var.workload_identity_provider_name
  description                        = var.workload_identity_provider_description

  attribute_mapping = {
    "google.subject" = "assertion.repository+assertion.ref"
  }

  oidc {
    issuer_uri = "https://token.actions.githubusercontent.com"
  }
}
