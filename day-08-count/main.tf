resource "aws_instance" "count" {

    ami = var.ami_id
    instance_type =var.instance_type
    key_name = var.key
    associate_public_ip_address = true
    count= length(var.users_name)
    #tags = {
      #  Name="web-${count.index}"
    #}
    tags = {
      Name= var.users_name[count.index]
    }
}