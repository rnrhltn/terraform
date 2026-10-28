output "instance_id" {
  description = "id of EC2 instance"
  value       = module.ec2.instance_id
}

output "instance_private_ip" {
  description = "private IP of EC2 instance"
  value       = module.ec2.instance_private_ip
}

output "instance_public_ip" {
  description = "public IP of EC2 instance"
  value       = module.ec2.instance_public_ip
}

output "instance_public_dns" {
  description = "public DNS of EC2 instance"
  value       = module.ec2.instance_public_dns
}

output "security_group_id" {
  description = "security group with no inbound rules"
  value       = module.ec2.security_group_id
}