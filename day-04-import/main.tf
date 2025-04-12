resource "aws_instance" "import" {
    ami = "ami-002f6e91abff6eb96"
    instance_type = "t2.micro"
    tags={
        Name="terr"
    }
  
}