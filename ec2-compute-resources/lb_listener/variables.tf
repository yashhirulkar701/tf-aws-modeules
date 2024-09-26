variable "lb_target_group_name" {
  type        = string
  description = "provide nlb target group name"
}

variable "lb_arn" {
  type        = string
  description = "provide nlb arn"
}

variable "lb_target_group_type" {
  type        = string
  description = "specify target group type"
}

variable "vpc_id" {
  type        = string
  description = "specify vpc id"
}

variable "default_tags" {
  type = map(any)
  default = {}
  
}

variable "lb_target_port" {
    type = number
    description = "specify nlb target group port number"
}

variable "lb_target_protocol" {
    type = string
    description = "specify nlb target group protocol"
}

variable "lb_health_check_port" {
    type = number
    description = "specify nlb health check port number"
}

variable "lb_health_check_protocol" {
    type = string
    description = "specify nlb health check protocol"
}

variable "certificate_arn" {
  type = string
  description = "cert arn to use"
  default = ""
}
