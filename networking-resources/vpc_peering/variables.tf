variable "peer_owner_id" {
  type        = string
  description = "AWS peer account owner ID"
}

variable "peer_vpc_id" {
  type        = string
  description = "AWS peer vpc ID"
}

variable "vpc_id" {
  type        = string
  description = "Vpc id"
}

variable "peer_region" {
  type        = string
  description = "Region of the peer VPC"

}
variable "peering_connection_tags" {
  type        = map(string)
  description = "Tags for peering connection"

}
variable "requester_vpc_auto_accept" {
  type        = bool
  description = "if you want to auto accept the peering connection from requester vpc set it to true"
}

variable "accepter_vpc_auto_accept" {
  type        = bool
  description = "if you want to auto accept the peering connection from accepter vpc set it to true"
}

variable "allow_remote_vpc_dns_resolution" {
  type        = bool
  description = "Allow a local VPC to resolve public DNS hostnames to private IP addresses when queried from instances in the peer VPC"

}