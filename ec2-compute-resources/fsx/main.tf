resource "aws_fsx_windows_file_system" "fsx" {
  storage_capacity    = var.storage_capacity
  storage_type        = var.storage_type
  subnet_ids          = var.subnet_ids
  throughput_capacity = var.throughput_capacity
  deployment_type     = var.deployment_type
  preferred_subnet_id = var.preferred_subnet_id
  security_group_ids  = var.security_group_ids
  tags                = var.tags
  aliases             = var.dns_aliases

  self_managed_active_directory {
    dns_ips     = var.dns_ips
    domain_name = var.domain_name
    password    = var.password
    username    = var.username
  }
}
