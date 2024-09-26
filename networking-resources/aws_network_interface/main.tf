resource "aws_network_interface" "additional" {

  subnet_id                 = var.subnet_id
  tags                      = var.network_interface_tags

}

resource "aws_network_interface_attachment" "additional" {
  
  instance_id               = var.instance_id
  network_interface_id      = "${aws_network_interface.additional.id}"
  device_index              = var.device_index

}