
variable "route_table_id" {
  type        = string
  description = "route table ID in which route has to be added"
}

variable "destination_cidr_block" {
  type        = string
  description = "destination cidr block to be added in route"
}

variable "vpc_peering_connection_id" {
  type        = string
  description = "vpc peering connection ID"
}
