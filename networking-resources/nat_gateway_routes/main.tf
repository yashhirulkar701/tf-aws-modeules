
## Route Table for private Subnet 
resource "aws_route_table" "private_rt" {

  vpc_id                      = var.vpc_id

  route {
    cidr_block                = "0.0.0.0/0"
    nat_gateway_id            = var.nat_gateway_id
  }

  # route {
  #   cidr_block                = var.peer_vpc_cidr
  #   vpc_peering_connection_id = var.vpc_peering_connection_id
  # }

  # route {
  #   cidr_block                = var.peer_vpc_cidr_mssql_eu_dev
  #   vpc_peering_connection_id = var.mssql_eu_dev_vpc_peering_connection_id
  # }
  
  dynamic "route" {
    for_each = var.nat_route_configurations
    content {
      cidr_block                = route.value.cidr_block
      vpc_peering_connection_id = route.value.vpc_peering_connection_id
    }
  }

  tags                        = var.nat_tags

  lifecycle {
    ignore_changes = [ route, ]
  }

}

## Route Table association for Private Subnet
resource "aws_route_table_association" "private_subnet_rt_association" {

  subnet_id                   = var.nat_subnet_id
  route_table_id              = aws_route_table.private_rt.id

}