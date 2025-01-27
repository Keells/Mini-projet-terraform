output "ec2_id" {
  description = "ID of EC2"
  value       = aws_instance.myec2.id
}

output "ec2_availability_zone" {
  description = "Availability zone of ec2"
  value       = aws_instance.myec2.availability_zone
}
