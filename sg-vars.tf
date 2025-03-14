# Defines vars for security group

# Everywhere cidr block
variable "everywhere" {
  type    = string
  default = "0.0.0.0/0"
}