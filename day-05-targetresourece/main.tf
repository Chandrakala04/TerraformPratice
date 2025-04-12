resource "aws_instance" "import" {
ami = "ami-002f6e91abff6eb96"
instance_type = "t3.micro"
key_name= "mygit"
tags = {
  Name="depenent"
}
}

resource "aws_s3_bucket" "depenent" {
    bucket = "dependents31"

  
}
