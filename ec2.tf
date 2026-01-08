resource "aws_instance" "example" {
  for_each = var.ec2_instances
  ami           = var.db-ami
  instance_type = each.value
  #count = var.novm
  # attaching security group to ec2 vm 
  vpc_security_group_ids = [ aws_security_group.allow_tls.id ]

  tags = {
    Name = "$(var.db-vm-name)-${each.key}"
  }
}