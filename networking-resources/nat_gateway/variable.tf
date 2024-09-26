variable "nat_subnet_id" {
  type        = string
  description = "The subnet ID "
}

variable "nat_tags" {
  type        = map(string)
  default     = {}
  description = "All the tags goes here"
}

variable "vpc_id" {
  type        = string
  default     = ""
}