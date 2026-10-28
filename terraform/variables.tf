variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "The environment for the deployment (e.g., dev, staging, prod)."
  type        = string
  default     = "dev"
}

variable "project" {
  description = "The name of the project."
  type        = string
  default     = "activity 7"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch."
  type        = string
  default     = "t3.nano"
}

variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance."
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "The ID of the VPC where the EC2 instance will be launched."
  type        = string
  default     = ""
}
variable "subnet_id" {
  description = "The ID of the subnet where the EC2 instance will be launched."
  type        = string
  default     = ""
}

variable "security_group_id" {
  description = "The ID of the security group to associate with the EC2 instance."
  type        = string
  default     = ""
}