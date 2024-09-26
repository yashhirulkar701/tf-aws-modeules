## Variables

variable "vpc_tags" {
  type    = map(string)
  default = {}
}

variable "vpc_cidr_block" {
  type    = string
  default = ""
}

variable "enable_dns_support" {
  type    = bool
  default = true
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}
