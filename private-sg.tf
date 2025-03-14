module "private-sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.3.0"

  # SG configuration
  name        = "${local.name}-private-sg"
  description = "Security group with HTTP and SSH open for the entire VPC cidr block"
  vpc_id      = module.vpc.vpc_id

  # Ingress rules
  ingress_rules       = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block] # allow inbound from VPC CIDR

  # Egress rules
  egress_rules = ["all-all"] # All traffic open

  # tags
  tags = local.common_tags
}