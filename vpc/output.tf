output "ip" {
  description = "Public ip of VPC"
  value       = aws_eip.lb.public_ip
}
