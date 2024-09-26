terraform {
  required_providers {
    aws = {
      source                      = "hashicorp/aws"
      configuration_aliases       = [aws.dest, aws.src]
      version                     = ">= 4.9.0"
    }
  }
}

#This resources created routes for vpc peering
resource "aws_route" "route_entry" {

  provider                        = aws.dest
  route_table_id                  = var.route_table_id
  destination_cidr_block          = var.destination_cidr_block
  vpc_peering_connection_id       = var.vpc_peering_connection_id

}