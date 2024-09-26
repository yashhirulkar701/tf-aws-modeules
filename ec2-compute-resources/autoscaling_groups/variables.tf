variable "template_name" {
  type        = string
  description = "provide name for asg-launch_template_name"
}

variable "image_id" {
  type        = string
  description = "provide ami id for the instances"
}

variable "iam_instance_profile" {
  type = string
  description = " provide instance profile "
}

variable "instance_type" {
  type        = string
  description = "provide instance type"
}

variable "volume_size" {
  type        = number
  description = "specify volume size"
}

variable "security-group-id" {
  type        = string
  description = "security group id"
}

variable "resource_type" {
  type        = string
  description = "specify resource type"
}

variable "asg_name" {
  type        = string
  description = "provide name for asg-name"
}

variable "min_size" {
  type        = number
  description = "minimum size"
}

variable "max_size" {
  type        = number
  description = "maximum size"
}

variable "desired_capacity" {
  type        = number
  description = "desired capacity"
}

variable "subnet_1" {
  type        = string
  description = "subnet 1 for asg instances"
}

variable "subnet_2" {
  type        = string
  description = "subnet 2 for asg instances"
}

variable "user_data_file" {
  type = string
}

variable "default_tags" {
  type = map(any)
  default = { }
}

variable "key_name" {
  type  = string
}

variable "tg_arn" {
  type  = list(string)
}

variable "suspended_processes" {
  type = list(string)
  default = []
}

variable "tag" {
  type = list(object({
    key                 = string
    value               = string
  }))
  default = []
}