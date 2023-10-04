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
}

variable "terraform_state_bucket_prefix" {
    type= string
}

variable "cloud_function_name" {
    type= string
}

variable "source_cloud_storage" {
    type= string
}