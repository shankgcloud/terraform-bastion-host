# Define outputs for the Bastion SG

# Bastion SG ID
output "bastion_sg-id" {
  value = module.bastion-sg.security_group_id
}

# Private SG ID
output "private_sg-id" {
  value = module.private-sg.security_group_id
}