resource "aws_lb_target_group" "lb_target_group" {
  name        = var.lb_target_group_name
  port        = var.lb_target_port
  protocol    = var.lb_target_protocol
  vpc_id      = var.vpc_id
  target_type = var.lb_target_group_type

  health_check {
    port                = var.lb_health_check_port
    protocol            = var.lb_health_check_protocol
    timeout             = 30
    interval            = 60
    unhealthy_threshold = 3
  }

  tags = {
    "name" = var.lb_target_group_name
  }

}

resource "aws_lb_listener" "lb_listener" {
  load_balancer_arn = var.lb_arn
  port              = var.lb_target_port
  protocol          = var.lb_target_protocol
  certificate_arn   = var.certificate_arn
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.lb_target_group.arn
  }
}