resource "aws_efs_file_system" "myfilesystem" {
  creation_token     = var.creation_token
  encrypted          = var.encrypted
  performance_mode   = var.performance_mode
  throughput_mode    = var.throughput_mode
  lifecycle_policy {
    transition_to_ia = var.transition_to_ia
  }

  tags = var.tags
}