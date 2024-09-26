variable "key_name" {
  type    = string
}

variable "iam_instance_profile" {
  type    = string
  default = "ssm_instance_profile"
}

variable "ami_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "security_group_id" {
  type = list(string)
}

variable "vm_tag" {
  type = map(any)
  default = {
    Terraform     = ""
    ApicaProduct  = ""
    ApicaType     = ""
    Environment   = ""
  }
}

variable "instance_type" {
  type        = string
  description = "provide instance type"
}

variable "secondary_private_ips" {
  type        = list(string)
  description = "provide list of secondary ips"
}
