variable "region" {
    type = string
    default = "us-east-1"
    description = "The AWS region where the resources will be created."
    
}

variable "vpc_id" {
    type = string
    description = "The ID of the VPC where the security group will be created."
    default     = "vpc-0c828500519a85700"
}

variable "security_group_id" {
    type = string
    description = "The ID of the security group."
    default     = "sg-03b18893d2d33d93e"
}

variable "ingress_rules" {
    type = list(object({
        from_port   = number
        to_port     = number
        protocol    = string
        cidr_blocks = list(string)
    }))
    description = "A list of ingress rules for the security group."
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

variable "egress_rules" {
    type = list(object({
        from_port   = number
        to_port     = number
        protocol    = string
        cidr_blocks = list(string)
    }))
    description = "A list of egress rules for the security group."
    default = [
        {
            from_port   = 0
            to_port     = 0
            protocol    = "-1"
            cidr_blocks = ["0.0.0.0/0"]
        }
    ]
}

variable "security_group_name" {
    type = string
    description = "The name of the security group."
    default = "prod-sg"
}
