#output "db-vm-publicIP" {
#  value = aws_instance.example.*.public_ip
#}

#output "db-vm-id" {
#  value = [ for i in aws_instance.example: i.id ]
#}