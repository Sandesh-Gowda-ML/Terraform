variable disk1_size {
  default     = ""
  description = "Size of volume 1"
}

variable disk2_size {
  default     = ""
  description = "Size of volume 2"
}

variable region {
  default     = ""
  description = "Availability Zone"
}

variable ami {
  default     = ""
  description = "AMI"
}

variable instance_type {
  default     = ""
  description = "Type of the instance"
}

variable instance_name {
  default     = ""
  description = "Name of the EC2 instance"
}

variable disk1_name {
  default     = ""
  description = "Name of the Disk1"
}

variable disk2_name {
  default     = ""
  description = "Name of the Disk2"
}

variable vpc_name {
  default     = ""
  description = "name of the VPC"
}

variable vpc_cidr {
  default     = ""
  description = "CIDR value for VPC"
}

variable subnet_cidr {
  default     = ""
  description = "CIDR value for SUBNET"
}

variable subnet_name {
  default     = ""
  description = "name of the VPC"
}

variable network_interface {
  default     = ""
  description = "primary_network_interface"
}
