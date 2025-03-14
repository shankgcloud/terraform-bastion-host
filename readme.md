Building a 3-tier AWS architecture

Region: ap-south-1
VPC:
VPC cidr: 10.0.0.0/16
Subnets:
Public Subnet: 10.0.1.0/24
Private Subnet: 10.0.2.0/24 and 10.0.3.0/24

Bastion Host in the public subnet with a Bastion SG that allows SSH from anywhere

1 instance each in the private subnets with a Private SG that allows traffic from the Bastion SG.

