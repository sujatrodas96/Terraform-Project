output "alb_dns_name" {
  value = module.alb.dns_name
}

output "vpc_id" {
  value = module.network.vpc_id
}

output "asg_name" {
  value = module.asg.asg_name
}

output "nat_public_ips" {
  value = module.network.nat_public_ips
}
