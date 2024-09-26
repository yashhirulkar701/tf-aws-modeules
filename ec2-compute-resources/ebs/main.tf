resource "aws_ebs_volume" "volume" {
  availability_zone = var.availability_zone
  size              = var.ebs_size
  encrypted         = var.encrypt
}
