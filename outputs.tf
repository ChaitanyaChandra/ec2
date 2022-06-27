output "target_group_arn" {
  value       = aws_lb_target_group_attachment.attach_instance.id
  description = "target group arn for elb module"
}