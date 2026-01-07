resource "aws_instance" "example" {
  ami           = var.dan-ami
  instance_type = var.dan-vm-size

  tags = {
    Name = var.dan-vm-name
  }
}