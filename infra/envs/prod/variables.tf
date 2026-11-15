variable "region" {
  type    = string
  default = "us-east-1"
}

variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "owner" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "azs" {
  type = list(string)
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "single_nat_gateway" {
  type    = bool
  default = false
}

variable "instance_type" {
  type = string
}

variable "app_port" {
  type    = number
  default = 80
}

variable "min_size" {
  type = number
}

variable "max_size" {
  type = number
}

variable "desired_capacity" {
  type = number
}

variable "certificate_arn" {
  type    = string
  default = ""
}

variable "waf_acl_arn" {
  type    = string
  default = ""
}
