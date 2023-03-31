resource "aws_vpc" "vpc1" {
  cidr_block = "${var.vpc_cidr}"

  tags = {
    Name = "${var.vpc_name}"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = "${aws_vpc.vpc1.id}"
  cidr_block = "${var.subnet_cidr}"

  tags = {
    Name = "${var.subnet_name}"
  }
}

resource "aws_network_interface" "network" {
  subnet_id = "${aws_subnet.subnet1.id}"

  tags = {
    Name = "${var.network_interface}"
  }
}
