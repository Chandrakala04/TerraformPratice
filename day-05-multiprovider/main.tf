resource "aws_s3_bucket" "test" {
    bucket = "multiprovider"
    provider = aws.America
  
}
resource "aws_s3_bucket" "test1" {
    bucket = "multi2providerbucket"
    provider = aws.India
  
}

provider "aws" {
    region = "us-east-1"
    alias = "America"
  
}

provider "aws" {
    region = "ap-south-1"
    alias = "India"
  
}


