
# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
    region = "us-east-1"

}
resource "aws_vpc" "vpc"{
    cidr_block = "10.1.0.0/16"

}
# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity-T2"{
    count           = "4"
    ami             = "ami-0c6b1d09930fac512"
    instance_type   = "t2.micro"
    subnet_id       = "subnet-0eb5eea84baa31a86"
}
# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity-M4"{
    count           = "2"
    ami             = "ami-0c6b1d09930fac512"
    instance_type   = "m4.large"
    subnet_id       = "subnet-0eb5eea84baa31a86"
}
