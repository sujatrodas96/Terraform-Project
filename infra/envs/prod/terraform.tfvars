project     = "myapp"
environment = "prod"
owner       = "devops"

vpc_cidr             = "10.0.0.0/16"
azs                  = ["us-east-1a", "us-east-1b"]
public_subnet_cidrs  = ["10.0.0.0/24", "10.0.1.0/24"]
private_subnet_cidrs = ["10.0.10.0/24", "10.0.11.0/24"]
single_nat_gateway   = false # set true to save cost (one NAT, no AZ redundancy)

instance_type    = "t3.small"
app_port         = 80
min_size         = 1
max_size         = 4
desired_capacity = 2

# Set these for real production:
certificate_arn = "" # ACM cert ARN -> enables HTTPS + HTTP->HTTPS redirect
waf_acl_arn     = "" # optional regional WAFv2 ACL
