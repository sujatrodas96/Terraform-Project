variable "region" {
  description = "The region where the resources will be deployed."
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance."
  type        = string
}

variable "instance_type" {
  description = "The instance type for the EC2 instance."
  type        = string
  default     = "t3.micro"
}


variable "instance_name" {
  description = "The name tag for the EC2 instance."
  type        = string
  default     = "ProdVM"
}

variable "security_group_id" {
  description = "The ID of the security group to associate with the EC2 instance."
  type        = string
}

