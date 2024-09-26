## This resource creates Internet Gateway
resource "aws_internet_gateway" "internet_gateway" {

  tags                        = var.ig_tags
  vpc_id                      = var.vpc_id

}

## Route Table for Public Subnet and attach Internet Gateway to it
resource "aws_route_table" "public_rt" {

  vpc_id                      = var.vpc_id

  route {
    cidr_block                = "0.0.0.0/0"
    gateway_id                = aws_internet_gateway.internet_gateway.id
  }

  dynamic "route" {
    for_each = var.internet_route_configurations
    content {
      cidr_block                = route.value.cidr_block
      vpc_peering_connection_id = route.value.vpc_peering_connection_id
    }
  }

  tags                        = var.ig_tags

  depends_on = [
    aws_internet_gateway.internet_gateway
  ]

  lifecycle {
    ignore_changes = [ route, ]
  }

}