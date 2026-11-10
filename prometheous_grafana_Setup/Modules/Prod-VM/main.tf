
resource "aws_instance" "prod_vm" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [
    var.security_group_id
  ]
  user_data = join("\n", [
    file("${path.module}/Amazon.sh"),
    file("${path.module}/node-exporter.sh")
  ])

  tags = {
    Name = var.instance_name
  }
}
