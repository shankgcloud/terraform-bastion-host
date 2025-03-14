module "vpc" {
  # module source and version
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.19.0"

  name = "${local.name}-${var.vpc_name}"
  cidr = var.vpc_cidr

  # Network config
  azs             = data.aws_availability_zones.available.names
  private_subnets = var.vpc_private_subnets
  public_subnets  = ["${var.vpc_public_subnets}"]

  # NAT gateways
  enable_nat_gateway = true
  single_nat_gateway = true

  # VPC DNS config
  enable_dns_hostnames = true
  enable_dns_support   = true

  # tags
  tags     = local.common_tags
  vpc_tags = local.common_tags

  # additional tags
  public_subnet_tags = {
    Type = "PubSub"
  }

  private_subnet_tags = {
    Type = "PrvSubs"
  }
}