variable "gcp_region" {
  description = "GCP region, e.g. us-east1"
  default     = "australia-southeast1"
}

variable "gcp_zone" {
  description = "GCP zone, e.g. us-east1-b (which must be in gcp_region)"
  default     = "australia-southeast1-c"
}

variable "gcp_project" {
  description = "GCP project name"
  default     = "dwright-gcp-demos"
}
variable "aws_region" {
  default     = ""
  type        = string
  description = "aws region"
}

variable "appId" {
  default = ""
}

variable "password" {
  default = ""
}
