
terraform {
  required_version = ">= 1.10.0"

  backend "s3" {
    bucket       = "sujatrodas-terraform-state-490164"
    key          = "prometheus-grafana/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}

provider "aws" {
  region = var.region
}

module "security_group_prod" {
  source = "./Modules/Security-Group-Prod"

  vpc_id              = var.vpc_id
  ingress_rules       = var.ingress_rules
  egress_rules        = var.egress_rules
  security_group_name = var.security_group_name
  security_group_id   = var.security_group_id
}

module "prod_vm" {
  source = "./Modules/Prod-VM"

  ami_id            = var.ami_id
  instance_type     = var.instance_type
  instance_name     = var.instance_name
  security_group_id = module.security_group_prod.security_group_id
}

module "security_group_monitoring" {
  source = "./Modules/Security-Group-Monitoring"

  vpc_id              = var.vpc_id
  ingress_rules       = var.ingress_rules_monitoring
  egress_rules        = var.egress_rules
  security_group_name = var.security_group_name_monitoring
  security_group_id   = var.security_group_id
}

module "monitoring_vm" {
  source = "./Modules/Monitoring-VM"

  ami_id            = var.ami_id
  instance_type     = var.instance_type
  instance_name     = var.instance_name_monitoring
  security_group_id = module.security_group_monitoring.security_group_id
}
