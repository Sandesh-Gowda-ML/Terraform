variable size1 {
  default     = ""
  description = "Size of volume 1"
}

variable size2 {
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

variable disk1Name {
  default     = ""
  description = "Name of the Disk1"
}

variable disk2Name {
  default     = ""
  description = "Name of the Disk2"
}

variable vpcName {
  default     = ""
  description = "name of the VPC"
}

variable vpcCidr {
  default     = ""
  description = "CIDR value for VPC"
}

variable subnetCidr {
  default     = ""
  description = "CIDR value for SUBNET"
}

variable subnetName {
  default     = ""
  description = "name of the VPC"
}

variable network_interface {
  default     = ""
  description = "primary_network_interface"
}
