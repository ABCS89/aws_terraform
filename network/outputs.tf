output "subnet_id" {
  description = "Id da minha subnet"
  value       = aws_subnet.subnet.id
}

output "sucurity_group_id" {
  description = "ID da minha SG"
  value       = aws_security_group.sg.id
}