data "aws_vpc" "custom" {
  filter {
    name = "tag:Name"
    values = ["myvpc"]
  }
  
}
data "aws_subnet" "datasource"{
    filter {
    name   = "tag:Name"
    values = ["mysubnet1"]
 
    }
}
 
data "aws_ami" "awslinux" {
  most_recent = true
  owners = [ "amazon" ]
  filter {
    name = "name"
    values = [ "amzn2-ami-ecs-inf-hvm-2.0.20250117-x86_64-ebs" ]
  }
  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }
}

resource "aws_instance" "import" {
ami = data.aws_ami.awslinux.id
subnet_id = data.aws_subnet.datasource.id
instance_type = "t3.micro"
key_name= "mygit"
tags = {
  Name="datasource"
}
}