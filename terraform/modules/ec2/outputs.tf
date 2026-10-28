output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.training.id
}

output "instance_private_ip" {
  description = "Private IP of the EC2 instance"
  value       = aws_instance.training.private_ip
}

output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.training.public_ip
}

output "instance_public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = aws_instance.training.public_dns
}

output "security_group_id" {
  description = "ID of the security group"
  value       = aws_security_group.training.id
}