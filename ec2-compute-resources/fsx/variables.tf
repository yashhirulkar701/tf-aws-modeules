variable "storage_capacity" {
  type = number
}
variable "storage_type" {
  type = string
}
variable "subnet_ids" {
  type = list(string)
}
variable "throughput_capacity" {
  type = number
}
variable "dns_ips" {
  type = list(string)
}
variable "dns_aliases" {
  type = list(string)
}
variable "domain_name" {
  type = string
}
variable "password" {
  type      = string
}
variable "username" {
  type = string
}
variable "deployment_type" {
  type = string
}
variable "preferred_subnet_id" {
  type = string
}
variable "security_group_ids" {
  type = list(string)
}
variable "tags" {
  type = map(string)
}

variable "default_tags" {
  type = map(any)
  default = { }
}