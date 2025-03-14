# Define outputs for the Bastion Instance

# Public IP address of the Bastion Host
output "bastion_public_ip" {
  value = module.bastion-instance.public_ip
}

# Bastion Host instance id
output "bastion_instance_id" {
  value = module.bastion-instance.id
}

# Private IP of the private instances
output "ec2_private_ip" {
  value = [for ip in module.private-instance : ip.private_ip]
}

# Private instance IDs
output "ec2_instance_ids" {
  value = [for id in module.private-instance : id.id]
}

