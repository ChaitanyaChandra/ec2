output "target_group_arn" {
  value       = aws_lb_target_group.target_group.arn
  description = "target group arn for elb module"
}