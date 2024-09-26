variable "sg_ports" {
  type = list(tuple([number, number]))
}

variable "sg_ports_udp" {
  type = list(tuple([number, number]))
}

variable "sg_cidr_blocks" {
  type = list(string)
}

variable "vpc_id" {
  type = string
}

variable "sg_tags" {
  type = map(string)
}

variable "name" {
  type = string
}

variable "create_icmp_rule" {
  default = true
}

variable "sg_cidr_blocks_icmp" {
  type = list(string)
  description = "CIDR blocks for ICMP"
  default = ["192.168.0.0/16", "10.0.0.0/8"]
}

variable "security_groups" {
 type = list(string)
 description = "specify sg id"
 default = []
}