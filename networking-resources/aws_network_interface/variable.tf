variable "subnet_id" {
  type = string
}

variable "network_interface_tags" {
  type = map(string)
}

variable "instance_id" {
  type = string
}

variable "device_index" {
  type = number
}
