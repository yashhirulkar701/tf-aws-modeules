variable "lb_name" {
  type        = string
  description = "provide lb name"
}

variable "lb_internal" {
  type        = bool
  description = "specify whether lb should be internal or not"
}

variable "lb_type" {
  type        = string
  description = "specify load balancer type"
}

variable "subnet_1" {
  type        = string
  description = "specify subnet 1"
}

variable "subnet_2" {
  type        = string
  description = "specify subnet 2"
}

variable "vpc_id" {
  type        = string
  description = "specify vpc id"
}

variable "security_groups" {
 type = list(string)
 description = "specify sg id"
 default = []
}

variable "default_tags" {
  type = map(any)
  default = { }
}