provider "aws" {
region = "us-east-2"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-088d38b423bff245f"
instance_type = "t2.medium"
key_name = "hemanth"
vpc_security_group_ids = ["sg-0de17257dfe5b6e7e"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2", "Monitoring server"]
}
