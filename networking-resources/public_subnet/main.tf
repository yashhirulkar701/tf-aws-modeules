##  public Subnet should be created by this resource
resource "aws_subnet" "subnet" {

  vpc_id                      = var.vpc_id
  availability_zone           = var.public_subnet_availability_zone
  cidr_block                  = var.public_subnet_cidr_block

  tags                        = var.public_subnet_tags

}

## Route Table association for Public Subnet
resource "aws_route_table_association" "public_subnet_rt_association" {

  subnet_id                   = aws_subnet.subnet.id
  route_table_id              = var.public_rt

  depends_on = [
    aws_subnet.subnet
  ]

}