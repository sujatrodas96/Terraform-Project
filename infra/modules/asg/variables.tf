variable "name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "alb_security_group_id" {
  type = string
}

variable "target_group_arn" {
  type = string
}

variable "app_port" {
  type    = number
  default = 80
}

variable "instance_type" {
  type    = string
  default = "t3.small"
}

variable "ami_ssm_parameter" {
  type        = string
  default     = "/aws/service/canonical/ubuntu/server/24.04/stable/current/amd64/hvm/ebs-gp3/ami-id"
  description = "SSM public parameter that resolves to the AMI ID (Ubuntu 24.04 by default)."
}

variable "root_volume_size" {
  type    = number
  default = 20
}

variable "min_size" {
  type    = number
  default = 1
}

variable "max_size" {
  type    = number
  default = 4
}

variable "desired_capacity" {
  type    = number
  default = 2
}

variable "cpu_target" {
  type        = number
  default     = 60
  description = "Target average CPU % for scaling."
}
