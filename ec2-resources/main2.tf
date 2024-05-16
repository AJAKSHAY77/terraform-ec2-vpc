
resource "tls_private_key" "rsa_4096_example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}


resource "aws_key_pair" "generated_key" {
  key_name   = "generated-key"
  public_key = tls_private_key.rsa_4096_example.public_key_openssh
}


resource "aws_instance" "terraform_ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  subnet_id              = var.public_subnet_id
  key_name               = aws_key_pair.generated_key.key_name
  tags = {
    Name = "public-ec2"
  }
}


output "private_key_pem" {
  value     = tls_private_key.rsa_4096_example.private_key_pem
  sensitive = true
}
