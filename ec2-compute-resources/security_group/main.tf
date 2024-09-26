#This resource creates security groups
resource "aws_security_group" "security_group" {
  name        = var.name
  description = "Security group for database servers"
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    for_each = var.sg_ports
    iterator = port

    content {
      from_port   = port.value[0]
      to_port     = port.value[1]
      protocol    = "tcp"
      cidr_blocks = var.sg_cidr_blocks
      security_groups = var.security_groups
    }
  }

  dynamic "ingress" {
    for_each = var.sg_ports_udp
    iterator = port

    content {
      from_port   = port.value[0]
      to_port     = port.value[1]
      protocol    = "udp"
      cidr_blocks = var.sg_cidr_blocks
    }
  }
  
  dynamic "ingress" {
    for_each = var.create_icmp_rule ? [1] : []
    content {
      from_port   = -1
      to_port     = -1
      protocol    = "icmp"
      cidr_blocks = var.sg_cidr_blocks_icmp
      description = "Allow icmp"
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = var.sg_tags
}