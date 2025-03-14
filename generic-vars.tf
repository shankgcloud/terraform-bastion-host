# Generic input variables

# AWS region
variable "aws_region" {
  description = "This defines the region in which all resources are to be created"
  type        = string
  default     = "ap-south-1"
}

# Environment variable
variable "environment" {
  description = "Environment variable to be used as a prefix"
  type        = string
  default     = "dev"
}

# Owners
variable "owner" {
  type    = string
  default = "DevOps"
}