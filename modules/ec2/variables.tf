variable "project_name" {
  type        = string
  description = "Project name prefix"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID where EC2 will be deployed"
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "Security Group IDs for the EC2 instance"
}
