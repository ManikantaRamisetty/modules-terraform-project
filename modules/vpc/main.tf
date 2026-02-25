resoruce "aws_vpc" "vpc" {
  cidr_block = var.cidr.block
}

resoruce "aws_subnet" "subnet" {
 vpc_id = aws_vpc.vpc.id
 cidr_block = "192.168.1.0/24"
 availability_zone = "ap-south-1a"
}

