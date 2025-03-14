# Define outputs for the VPC module

# VPC ID
output "vpc_id" {
  value = module.vpc.default_vpc_id
}