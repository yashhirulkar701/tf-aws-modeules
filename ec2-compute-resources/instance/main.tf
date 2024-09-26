resource "aws_instance" "compute_server" {
  instance_type          = var.instance_type
  ami                    = var.ami_id
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_id
  iam_instance_profile   = var.iam_instance_profile
  user_data              = filebase64("${path.module}/userdata.sh")

  secondary_private_ips = var.secondary_private_ips

  tags                   = var.vm_tag

  lifecycle {
    ignore_changes = [ secondary_private_ips, tags ]
  }

}
