output "prod_vm_id" {
  value = module.prod_vm.instance_id
}

output "monitoring_vm_id" {
  value = module.monitoring_vm.instance_id
}

output "prod_security_group_id" {
  value = module.security_group_prod.security_group_id
}

output "monitoring_security_group_id" {
  value = module.security_group_monitoring.security_group_id
}