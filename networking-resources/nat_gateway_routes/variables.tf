variable "nat_subnet_id" {
  type                          = string
  description                   = "The subnet ID "
}

variable "nat_gateway_id" {
  type                          = string
  description                   = "nat gateway id"
}

variable "nat_tags" {
  type                          = map(string)
  default                       = {}
  description                   = "All the tags goes here"
}

variable "vpc_id" {
  type                          = string
  default                       = ""
}

variable "vpc_peering_connection_id" {
  type                          = string
  default                       = ""    
}

variable "peer_vpc_cidr" {
  type                          = string
  default                       = ""    
}

variable "mssql_eu_dev_vpc_peering_connection_id" {
  type                          = string
  default                       = ""    
}

variable "peer_vpc_cidr_mssql_eu_dev" {
  type                          = string
  default                       = ""    
}

variable "nat_route_configurations" {
  type                          = list(object({
    cidr_block                  = string
    vpc_peering_connection_id   = string
  }))
  description                   = "List of nat route configurations"
}