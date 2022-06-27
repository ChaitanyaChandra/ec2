resource "aws_lb_target_group" "target_group" {
  name     = var.target_group_name
  port     = var.port
  protocol = var.protocol
  vpc_id   = var.vpc_id
}

resource "aws_lb_target_group_attachment" "attach_instance" {
  target_group_arn = aws_lb_target_group.target_group.id
  target_id        = aws_instance.vm.id
}