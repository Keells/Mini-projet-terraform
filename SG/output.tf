output "SG" {
  description = "name of SG"
  value       = aws_security_group.allow_ssh_http_https.id
}

output "subnet1" {
  description = "Subnet for correct bug"
  value       = aws_subnet.subnet1.id
}
