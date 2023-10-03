variable "project_id" {
    type= string
    description = "Google project ID"
}

variable "region" {
    type= string
    description = "Google project region"
}

variable "terraform_state_bucket" {
    type= string
    description = "GCS bucket to store terraform state"
}

variable "terraform_state_bucket_prefix" {
    type= string
    description = "GCS prefix to store terraform state"
}

variable "new_bucket_name" {
    type= string
    description = "Name of the new bucket to create"
}

variable "new_bucket_location" {
    type= string
    description = "Location of the new bucket to create"
}
