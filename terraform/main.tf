provider "aws" {
  region = var.aws_region
}

data "aws_security_group" "existing_sg" {
  name = var.security_group_name
}

resource "aws_instance" "web_server" {

  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [data.aws_security_group.existing_sg.id]

  tags = {
    Name = "cicd-static-server"
  }
}
