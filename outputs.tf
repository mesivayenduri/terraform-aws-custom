output "instance_ids" {
  value = aws_instance.ec2_instance[*].id
}

output "custom_sg_id" {
  value = aws_security_group.custom_sg.id
}

output "custom_sg_name" {
  value = aws_security_group.custom_sg.name
}