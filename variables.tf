# Create a variables.tf file for all the variables ressources

variable "region" {
  description = "this is the region"
  default     = "us-east-1"

}
# Vpc variables (vpc-name/cider-block)
variable "vpc_name" {
  default = "module-project-vpc"
}

variable "cblock" {
  default = "192.168.0.0/16"

}
# Security groups variables
variable "sg_name" {
  default = "module-project-sg"
}
# Key_pair variables
variable "key_name" {
  default = "module_project_NVA"

}
# EC2_instance variables("ami/instance-type/instance-name")

variable "ami" {
  default = "ami-0393ee318b08f4511"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "Name" {
  default = "my-ec2-instance"
}