# This resource creates a vpc
resource "aws_vpc" "vpc" {

  cidr_block                    = var.vpc_cidr_block
  enable_dns_support            = var.enable_dns_support
  enable_dns_hostnames          = var.enable_dns_hostnames

  tags                          = var.vpc_tags

}
