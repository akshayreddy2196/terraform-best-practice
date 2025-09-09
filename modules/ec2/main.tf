terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

resource "aws_instance" "this" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t3.micro"
  subnet_id     = var.subnet_id

  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "${var.project_name}-ec2"
  }
}
