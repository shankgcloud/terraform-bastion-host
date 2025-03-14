# This config file defines all the variable necessary for VPC module

# VPC name
variable "vpc_name" {
  type    = string
  default = "MyVPC"
}

# cidr block for the vpc
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

# VPC Private subnets
variable "vpc_private_subnets" {
  type    = list(string)
  default = ["10.0.2.0/24", "10.0.3.0/24"]
}

# VPC Public subnets
variable "vpc_public_subnets" {
  type    = string
  default = "10.0.1.0/24"
}
