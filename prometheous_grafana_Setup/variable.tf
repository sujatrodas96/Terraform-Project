
variable "region" {
  description = "AWS deployment region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = "vpc-0c828500519a85700"
}

# PRODUCTION INGRESS RULES

variable "ingress_rules" {
  description = "Production security group ingress rules"

  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))

  default = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 9100
      to_port     = 9100
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

# MONITORING INGRESS RULES

variable "ingress_rules_monitoring" {
  description = "Monitoring security group ingress rules"

  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))

  default = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 3000
      to_port     = 3000
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 9090
      to_port     = 9090
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 9093
      to_port     = 9093
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"] 
    }
  ]
}

# EGRESS RULES

variable "egress_rules" {
  description = "Security group egress rules"

  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))

  default = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

# SECURITY GROUP NAMES

variable "security_group_name" {
  description = "Production security group name"
  type        = string
  default     = "prod_sg"
}

variable "security_group_name_monitoring" {
  description = "Monitoring security group name"
  type        = string
  default     = "monitoring_sg"
}

# EC2 INSTANCE NAMES

variable "instance_name" {
  description = "Production EC2 name"
  type        = string
  default     = "ProdVM"
}

variable "instance_name_monitoring" {
  description = "Monitoring EC2 name"
  type        = string
  default     = "MonitoringVM"
}

# EC2 CONFIGURATION

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AWS AMI ID"
  type        = string
  default     = "ami-0d97d7f07b25dd693"
}

# KEY PAIR NAMES

variable "security_group_id" {
  description = "The ID of the security group."
  type        = string
  default     = "sg-03b18893d2d33d93e"
}
