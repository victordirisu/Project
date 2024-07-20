provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "terraform-inst" {
  ami                    = "ami-0b72821e2f351e396"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "terraform-key"
  vpc_security_group_ids = ["sg-0df42c8504269a97a"]
  tags = {
    Name    = "Terraform-Instance"
    Project = "Terraform"
  }
}

output "PublicIP" {
  value = aws_instance.terraform-inst.public_ip
}
output "PrivateIP" {
  value = aws_instance.terraform-inst.private_ip
}
