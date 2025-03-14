# Define input variable for the Bastion Instance

# Instance Type for Bastion Instance
variable "inst_type" {
  type    = string
  default = "t2.micro"
}

variable "inst_key_pair" {
  type    = string
  default = "MyKeyPair"
}