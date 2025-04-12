resource "aws_instance" "import" {
ami = "ami-002f6e91abff6eb96"
instance_type = "t3.micro"
key_name= "mygit"
#subnet_id = "subnet-0e12dc3559551f6fe"
availability_zone = "ap-south-1b"
tags = {
  Name="life1234"
}
#lifecycle {
 # prevent_destroy = true
#}

#lifecycle {
  #create_before_destroy = true
#}

lifecycle {
  ignore_changes = [ tags ]
}
  
}