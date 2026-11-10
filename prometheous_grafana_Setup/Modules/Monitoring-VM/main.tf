resource "aws_instance" "monitoring_vm" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [var.security_group_id]
  user_data = file("${path.module}/prom-grafana.sh")

  tags = {
    Name = var.instance_name
  }
}
