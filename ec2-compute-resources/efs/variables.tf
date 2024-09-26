variable "creation_token" {
    type = string
    description = "A unique name used as reference when creating the Elastic File System"
}

variable "encrypted" {
    type = bool
    description = "If true, the disk will be encrypted"
}

variable "performance_mode" {
    type = string
    description = "The file system performance mode. Can be either generalPurpose or maxIO"  
}

variable "throughput_mode" {
    type = string
    description = "Throughput mode for the file system. Defaults to bursting. Valid values: bursting, provisioned, or elastic"
}

variable "transition_to_ia" {
    type = string
    description = "Indicates how long it takes to transition files to the IA storage class. Valid values: AFTER_1_DAY, AFTER_7_DAYS, AFTER_14_DAYS, AFTER_30_DAYS, AFTER_60_DAYS, or AFTER_90_DAYS"  
}

variable "tags" {
    type = map
}