resource "aws_instance" "name" {

    ami = var.ami_id
    instance_type =var.instance_type
    key_name = var.key
    #for_each =dev
    for_each =toset(var.user_name)

    tags = {
      Name= each.value
    }
    }