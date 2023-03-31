resource "aws_ebs_volume" "disk1" {
  availability_zone = "us-east-1b"
  size              = "${var.disk1_size}"

  tags = {
    Name = "${var.disk1_name}"
  }
}

resource "aws_ebs_volume" "disk2" {
  availability_zone = "us-east-1b"
  size              = "${var.disk2_size}"

  tags = {
    Name = "${var.disk2_name}"
  }
}

resource "aws_volume_attachment" "ebsAttach" {

    device_name = "/dev/sdh"
    volume_id = "${aws_ebs_volume.disk2.id}"
    instance_id = "${aws_instance.ec2.id}"

}
