resource "aws_launch_template" "launch_template" {
  name          = var.template_name
  key_name      = var.key_name
  image_id      = var.image_id
  instance_type = var.instance_type

  iam_instance_profile {
    name = var.iam_instance_profile
  }

  block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
      volume_size = var.volume_size
      encrypted   = true
    }
  }

  vpc_security_group_ids = [
    var.security-group-id
  ]

  tag_specifications {
    resource_type = var.resource_type
    tags = merge(var.default_tags,
      {
        Autoscale = "true"
      }
    )
  }
  user_data = filebase64(var.user_data_file)
  # user_data = filebase64("${path.module}/userdata.ps1")
}

resource "aws_autoscaling_group" "asg" {
  name = var.asg_name

  launch_template {
    id      = aws_launch_template.launch_template.id
    version = "$Latest"
  }

  min_size            = var.min_size
  max_size            = var.max_size
  desired_capacity    = var.desired_capacity
  vpc_zone_identifier = [var.subnet_1, var.subnet_2]
  health_check_type   = "EC2"

  target_group_arns = var.tg_arn

  depends_on = [
    aws_launch_template.launch_template
  ]

  suspended_processes = var.suspended_processes

  dynamic "tag" {
    for_each = var.tag
    content {
      key                 = tag.value.key
      value               = tag.value.value
      propagate_at_launch = false
    }
  }

}
