# project level variables
project_id = "gcp-practice-project-aman"
region     = "us-central1"

# terraform state bucket variables
terraform_state_bucket = "gcp-practice-project-aman-terraform-state-bucket"
terraform_state_bucket_prefix = "cloud-function"

# cloud function variables
cloud_function_name = "gcs-trigger-function-gen2-via-terraform"
source_cloud_storage = "test-bucket-aman-via-terraform/cloud-function"