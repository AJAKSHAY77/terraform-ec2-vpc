# resource "aws_instance" "terraform-ec2" {
#   ami           = var.ami_id
#   instance_type = var.instance_type
#   vpc_security_group_ids = [var.security_group_id]
#   subnet_id     = var.public_subnet_id
#   tags = {
#     Name = "public-ec2"
#   }
# }

# resource "tls_private_key" "rsa-4096-example" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

# resource "aws_instance" "terraform-private" {
#   ami           = var.ami_id
#   instance_type = var.instance_typeclear
#   vpc_security_group_ids = [var.security_group_id]
#   subnet_id     = var.private.subnet_id
#   tags = {
#     Name = "private-ec2"
#   }
# }  