terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1a"
}

module "vpc" {
  source = "./modules/vpc"
  cidr_block = "192.168.0.0/16"
}
 
module "s3" {
  source = "./modules/s3"
  bucket_name = "mani-kops-testbkt14333"
}

module "ec2" { 
 source = "./modules/ec2"
 ami = "ami-051a31ab2f4d498f5"
 instance_type = "t2.micro"
 subnet_id = module.vpc.public_subnet_id
}

output "instance_id" {
  value = module.ec2.instance_id
}

output "bucket_arn" {
  value = module.s3.bucket_arn
}
