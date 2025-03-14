module "bastion-sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.3.0"

  # SG configuration
  name        = "${local.name}-bastion-sg"
  description = "Security group for bastion host"
  vpc_id      = module.vpc.vpc_id

  # Ingress rules
  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["${var.everywhere}"] # allow inbound traffic from everywhere

  # Egress rules
  egress_rules = ["all-all"] # All traffic open

  # tags
  tags = local.common_tags
}