variable "efs_subnet_id" {
    type = string
    description = "Subnet on which the the efs is mounted"
}

variable "security_groups" {
    type = list(string)
}

variable "file_system_id" {
    type = string
}