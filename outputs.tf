output "vm_public_ip" {
  value = aws_instance.example.*.public_ip
}

output "vm_private_ip" {
  value = aws_instance.example.*.private_ip
}

output "vm_ami" {
  value = aws_instance.example.*.ami
}

output "vm_ID" {
  value = [ for i in aws_instance.example: i.id]
}

output "security_group_names" {
  value = aws_instance.example.*.security_groups
}