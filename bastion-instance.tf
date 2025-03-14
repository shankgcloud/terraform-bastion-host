module "bastion-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.7.1"

  # Bastion instance config
  name                   = "${local.name}-Bastion-instance"
  instance_type          = var.inst_type
  key_name               = var.inst_key_pair
  vpc_security_group_ids = [module.bastion-sg.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]
  ami                    = data.aws_ami.amzn-linux2.id

  # tags
  tags = local.common_tags
}