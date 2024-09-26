terraform {
  required_providers {
    aws = {
      source                    = "hashicorp/aws"
      configuration_aliases     = [aws.dest, aws.src]
      version                   = ">= 4.9.0"
    }
  }
}

#This resouces created vpc peering
resource "aws_vpc_peering_connection" "vpc_peering_connection" {

  peer_owner_id                 = var.peer_owner_id
  peer_vpc_id                   = var.peer_vpc_id
  vpc_id                        = var.vpc_id
  tags                          = var.peering_connection_tags
  auto_accept                   = var.requester_vpc_auto_accept
  peer_region                   = var.peer_region
  provider                      = aws.src
  
  
}

resource "aws_vpc_peering_connection_accepter" "accepter_connection" {

  provider                      = aws.dest
  vpc_peering_connection_id     = aws_vpc_peering_connection.vpc_peering_connection.id
  auto_accept                   = var.accepter_vpc_auto_accept
  tags                          = var.peering_connection_tags
  
}

resource "aws_vpc_peering_connection_options" "requester" {
  
  provider                  = aws.src
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_connection.id

  requester {
    allow_remote_vpc_dns_resolution = var.allow_remote_vpc_dns_resolution
  }

  depends_on = [
    aws_vpc_peering_connection_accepter.accepter_connection
    ]

}


resource "aws_vpc_peering_connection_options" "accepter" {

  provider                  = aws.dest
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_connection.id

  accepter {
    allow_remote_vpc_dns_resolution = var.allow_remote_vpc_dns_resolution
  }

  depends_on = [
    aws_vpc_peering_connection_accepter.accepter_connection
    ]

}