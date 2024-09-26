resource "aws_lb" "load_balancer" {
  name               = var.lb_name
  internal           = var.lb_internal
  load_balancer_type = var.lb_type
  subnets            = [var.subnet_1, var.subnet_2]
  security_groups    = var.security_groups

  tags = {
    name = var.lb_name
  }
}