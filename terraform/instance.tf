resource "aws_instance" "ec2" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"

  network_interface {
    network_interface_id = "${aws_network_interface.network.id}"
    device_index         = 0
  }

  tags = {
    Name = "${var.instance_name}"
  }
}
