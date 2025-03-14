# This module defines private instances, one for each private subnet

module "private-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.7.1"

  # Private instance config
  name                   = "${local.name}-private-instance-${each.key}"
  instance_type          = var.inst_type
  key_name               = var.inst_key_pair
  vpc_security_group_ids = [module.private-sg.security_group_id]
  user_data              = file("${path.module}/app1-install.sh")

  for_each  = toset(["0", "1"])
  subnet_id = element(module.vpc.private_subnets, tonumber(each.key))

  ami = data.aws_ami.amzn-linux2.id

  # tags
  tags = local.common_tags
}
