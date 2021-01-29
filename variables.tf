variable "gcp_region" {
  description = "GCP region, e.g. us-east1"
  default     = ""
}

variable "gcp_zone" {
  description = "GCP zone, e.g. us-east1-b (which must be in gcp_region)"
  default     = ""
}

variable "gcp_project" {
  description = "GCP project name"
  default     = ""
}

variable "aws_region" {
  default     = ""
  type        = string
  description = "aws region"
}

variable "location" {
  default = ""
}

variable "appId" {
  default = ""
}

variable "password" {
  default = ""
}
