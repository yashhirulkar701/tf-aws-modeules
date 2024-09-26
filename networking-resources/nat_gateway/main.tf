# This resources would create a Nat Gateway 
resource "aws_nat_gateway" "nat_gateway" {
  
  allocation_id               = aws_eip.nat_gateway_eip.id
  subnet_id                   = var.nat_subnet_id

  tags                        = var.nat_tags

  depends_on = [
    aws_eip.nat_gateway_eip
  ]

}

## Elastic IP for NAT Gateway
resource "aws_eip" "nat_gateway_eip" {
  tags                        = var.nat_tags
}
