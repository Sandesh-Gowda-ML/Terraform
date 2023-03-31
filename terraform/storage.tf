resource "aws_ebs_volume" "disk1" {
  availability_zone = "${var.region}"
  size              = "${var.size1}"

  tags = {
    Name = "${var.disk1Name}"
  }
}

resource "aws_ebs_volume" "disk2" {
  availability_zone = "${var.region}"
  size              = "${var.size2}"

  tags = {
    Name = "${var.disk2Name}"
  }
}
