resource "aws_lb_target_group" "target_group" {
  name     = "internal-target-group"
  port     = var.port
  protocol = var.protocol
  vpc_id   = var.vpc_id
}

resource "aws_lb_target_group_attachment" "attach_instance" {
  target_group_arn = aws_lb_target_group.target_group.arn
  target_id        = aws_instance.vm.id
}