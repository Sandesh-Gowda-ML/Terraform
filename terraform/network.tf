resource "aws_vpc" "vpc1" {
  cidr_block = "${var.vpcCidr}"

  tags = {
    Name = "${var.vpcName}"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = "${aws_vpc.vpc1.id}"
  cidr_block = "${var.subnetCidr}"

  tags = {
    Name = "${var.subnetName}"
  }
}

resource "aws_network_interface" "network" {
  subnet_id = "${aws_subnet.subnet1.id}"

  tags = {
    Name = "${var.network_interface}"
  }
}
