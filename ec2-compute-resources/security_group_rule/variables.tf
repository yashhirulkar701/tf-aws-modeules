variable "security_group_id" {
  description = "The ID of the security group."
  type        = string
}

variable "rules" {
  description = "List of security group rules."
  type        = list(object({
    type                     = string
    from_port                = number
    to_port                  = number
    protocol                 = string
    source_security_group_id = string
  }))
}