variable "ami_id" {
type = string
default = "ami-0220d79f3f480ecf5"
description = "RHEL 9 image"
}

variable "instance_type" {
  type = string
  default= "t3.micro"
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "variable-demo"
        project = "roboshop"
        terraform = "true"
        environment = "dev"
    }

}
variable "security_group_name" {
    type = string
    default = "allow_all"
}
variable "sg_description" {
type = string
default = "allow inbound  and outbound rules"
}

variable "sg_from_port" {
type = number
default = 0
}
variable "sg_to_port" {
type = number
default = 0
}
variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}
variable "sg_tags" {
    type = map
    default = {
name = "allow_all_terraform"
project = "roboshop"
terraform = "true"
environment = "dev"
    }

}