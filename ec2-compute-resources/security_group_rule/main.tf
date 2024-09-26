# modules/security-group-rule/main.tf
resource "aws_security_group_rule" "sg_rule" {
  count = length(var.rules)

  security_group_id        = var.security_group_id
  type                     = var.rules[count.index].type
  from_port                = var.rules[count.index].from_port
  to_port                  = var.rules[count.index].to_port
  protocol                 = var.rules[count.index].protocol
  source_security_group_id = var.rules[count.index].source_security_group_id
}