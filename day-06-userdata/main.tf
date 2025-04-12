provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_instance" "test" {
    ami = "ami-002f6e91abff6eb96"
    instance_type = "t2.micro"
    key_name = "mygit"
    user_data= file("script.sh")
}