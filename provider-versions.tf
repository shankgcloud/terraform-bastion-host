terraform {
  required_version = "~>1.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.91"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}