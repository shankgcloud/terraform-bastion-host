resource "null_resource" "provs" {
  depends_on = [module.bastion-instance]

  # Defining connection block for the provisioners to connect Bastion Host
  connection {
    type        = "ssh"
    host        = aws_eip.bastion-eip.public_ip
    user        = "ec2-user"
    password    = ""
    private_key = file("MyKeyPair.pem")
  }

  # File provisioner is used to copy the key pair to the Bastion Host at: /tmp/MyKeyPair.pem
  provisioner "file" {
    source      = "MyKeyPair.pem"
    destination = "/tmp/MyKeyPair.pem"
  }

  # Use remote-exec provisioner to provide 400 permission to the key pair file
  provisioner "remote-exec" {
    inline = [
      "sudo chmod 400 /tmp/MyKeyPair.pem"
    ]
  }
}