variable "vpc_id" {
  type                          = string
  description                   = "The vpc ID"
}

variable "ig_tags" {
  type                          = map(string)
  default                       = {}
  description                   = "All the tags goes here"
}

variable "vpc_peering_connection_id" {
  type                          = string
  default                       = ""    
}

variable "peer_vpc_cidr" {
  type                          = string
  default                       = ""    
}

variable "internet_route_configurations" {
  type                          = list(object({
    cidr_block                  = string
    vpc_peering_connection_id   = string
  }))
  description                   = "List of route configurations"
}