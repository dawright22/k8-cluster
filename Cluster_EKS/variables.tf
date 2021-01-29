#
# Variables Configuration
#

variable "cluster-name" {
  type = string
}

variable "aws_region" {
  default     = "us-east-1"
  type        = string
  description = "aws region"
}
