variable "name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnet_ids" {
  type = list(string)
}

variable "target_port" {
  type    = number
  default = 80
}

variable "health_check_path" {
  type    = string
  default = "/health"
}

variable "certificate_arn" {
  type        = string
  default     = ""
  description = "ACM certificate ARN. If set: HTTPS on 443 and HTTP redirects to HTTPS. If empty: HTTP only (not for real production)."
}

variable "enable_deletion_protection" {
  type    = bool
  default = true
}

variable "waf_acl_arn" {
  type        = string
  default     = ""
  description = "Optional WAFv2 Web ACL (regional) to attach to the ALB."
}
