# Create eip for bastion host

resource "aws_eip" "bastion-eip" {
  depends_on = [module.bastion-instance, module.vpc]
  instance   = module.bastion-instance.id
  domain     = "vpc"
  tags       = local.common_tags
}