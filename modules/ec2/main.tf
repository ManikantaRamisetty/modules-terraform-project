resoruce "aws_instance" "terraform_modules"{
 ami = var.ami
 instance_type = var.instance.type
 subnet = var.subnet_id
 tags = {
  Name = "${terraform.workspace}-modules-server"
 }
}
