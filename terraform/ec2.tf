provider "aws" {
  region  = "us-east-1"
  version = "v2.70.0"
  access_key = ""
  secret_key = ""
}


resource "aws_vpc" "vpc1" {
  cidr_block = "10.0.0.0/16"
  tags  = {
    Name = "ec2_vpc"                           #Vpc name inside AWS 
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = "${aws_vpc.vpc1.id}"                
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "ec2_subnet"
  }
}

resource "aws_network_interface" "network" {
  subnet_id   = "${aws_subnet.subnet1.id}"

  tags = {
    Name = "primary_network_interface"
  }
}


resource "aws_instance" "ec2" {
  ami           = "ami-00c39f71452c08778"   #get ami details from aws console while launching instance
  instance_type = "t3.micro"
   network_interface {
    network_interface_id = "${aws_network_interface.network.id}"
    device_index         = 0
  }

  tags  = {
    Name = "test"                           #instance name 
  }

}



