resource "aws_instance" "terraform_modules"{
 ami = var.ami
 instance_type = var.instance_type
 subnet_id = var.subnet_id
 tags = {
  Name = "${terraform.workspace}-modules-server"
 }
}
