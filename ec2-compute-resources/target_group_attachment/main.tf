resource "aws_lb_target_group_attachment" "tg_attachment" {
  target_group_arn = var.target_group_arn
  target_id        = var.target_id
  port             = var.target_group_attachment_port
}