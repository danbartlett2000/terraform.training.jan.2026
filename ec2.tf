resource "aws_instance" "example" {
  ami           = var.db-ami
  instance_type = var.db-vm-size

  tags = {
    Name = var.db-vm-name
  }
}