output "instance_ids" {
  value = aws_instance.ec2_instance[*].id
  description = "This output holds the list of EC2 instance IDs"
}

output "custom_sg_id" {
  value = aws_security_group.custom_sg.id
  description = "This output holds the security group ID"
}

output "custom_sg_name" {
  value = aws_security_group.custom_sg.name
  description = "This output holds the security group name"
}