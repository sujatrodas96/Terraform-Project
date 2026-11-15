variable "name" {
  type        = string
  description = "Name prefix for all network resources."
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "azs" {
  type        = list(string)
  description = "Availability zones. One public and one private subnet is created per AZ."
  validation {
    condition     = length(var.azs) >= 2
    error_message = "An ALB requires subnets in at least 2 AZs."
  }
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "single_nat_gateway" {
  type        = bool
  default     = false
  description = "true = one shared NAT (cheaper, single point of failure). false = one NAT per AZ (HA)."
}

variable "flow_log_retention_days" {
  type    = number
  default = 90
}
