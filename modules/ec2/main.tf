terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
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
