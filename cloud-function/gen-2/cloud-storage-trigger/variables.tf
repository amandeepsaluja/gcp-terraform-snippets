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

variable "name" {
  description = "A user-defined name of the function."
  type        = string
  default     = "gcs-trigger-function-gen2-via-terraform"
}

variable "location" {
  description = "The location of this cloud function."
  type        = string
  default     = "us-central1"
}

variable "description" {
  description = "User-provided description of a function."
  type        = string
  default     = "Cloud function example managed by Terraform"
}

variable "runtime" {
  description = "The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function."
  type        = string
  default     = "python39"
}

variable "entry_point" {
  description = "The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named \"function\". For Node.js this is name of a function exported by the module specified in source_location."
  type        = string
  default     = "hello_gcs"
}

variable "min_instance_count" {
  description = "(Optional) The limit on the minimum number of function instances that may coexist at a given time."
  type        = number
  default     = 0
}

variable "max_instance_count" {
  description = "(Optional) The limit on the maximum number of function instances that may coexist at a given time."
  type        = number
  default     = 1
}

variable "timeout_seconds" {
  description = "(Optional) The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds."
  type        = number
  default     = 60
}

variable "ingress_settings" {
  description = "(Optional) Available ingress settings. Defaults to \"ALLOW_ALL\" if unspecified. Default value is ALLOW_ALL. Possible values are ALLOW_ALL, ALLOW_INTERNAL_ONLY, and ALLOW_INTERNAL_AND_GCLB."
  type        = string
  default     = "ALLOW_ALL"
}

variable "all_traffic_on_latest_revision" {
  description = "(Optional) Whether 100% of traffic is routed to the latest revision. Defaults to true."
  type        = bool
  default     = true
}

variable "bucket_name" {
  description = "The bucket name where the cloud function code will be stored"
  type        = string
  default     = "gcp-practice-project-aman-cloud-function-input"
}

variable "cf_trigger_bucket_path" {
  type    = string
  default = "projects/_/buckets/test-bucket-aman-via-terraform/objects/cloud-function/*"
}

variable "service_account_email" {
}
