variable "private_subnet_tags" {
  type    = map(string)
  default = {}
}

variable "vpc_id" {
  type    = string
  default = ""
}

variable "private_subnet_availability_zone" {
  type    = string
  default = ""
}

variable "private_subnet_cidr_block" {
  type    = string
  default = ""
}