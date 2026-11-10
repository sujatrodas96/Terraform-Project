output "instance_id" {
  description = "The ID of the monitoring EC2 instance."
  value       = aws_instance.monitoring_vm.id
}