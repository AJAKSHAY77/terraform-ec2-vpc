variable "ami_id" {
  default = "ami-080660c9757080771"
}

variable "instance_type" {
  default = "t2.micro"
}
variable "vpc_id" {
  type = string
}
variable "security_group_id" {
  type = string
}
variable "public_subnet_id" {
  type = string
}

variable "private_subnet_id" {
  type = string
}