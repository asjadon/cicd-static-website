variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "security_group_name" {
  description = "Existing security group name"
  type        = string
}

variable "key_name" {
  description = "Key pair for EC2 login"
  type        = string
}
