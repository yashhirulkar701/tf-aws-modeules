variable "public_subnet_tags" {
  type    = map(string)
  default = {}
}

variable "vpc_id" {
  type    = string
  default = ""
}

variable "public_subnet_availability_zone" {
  type    = string
  default = ""
}

variable "public_subnet_cidr_block" {
  type    = string
  default = ""
}

variable "public_rt" {
  type    = string
  default = ""
}
