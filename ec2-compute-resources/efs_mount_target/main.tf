resource "aws_efs_mount_target" "efs_mount_subnet" {
  file_system_id  = var.file_system_id
  subnet_id       = var.efs_subnet_id
  security_groups = var.security_groups
}
