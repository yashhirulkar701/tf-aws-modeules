##  private Subnet should be created by this resources
resource "aws_subnet" "subnet" {

  vpc_id                      = var.vpc_id
  availability_zone           = var.private_subnet_availability_zone
  cidr_block                  = var.private_subnet_cidr_block

  tags                        = var.private_subnet_tags

}
