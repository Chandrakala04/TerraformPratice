variable "aws_region" {
    description = "The region in which to create infrastructure"
    type = string
    nullable = false
    default = "change me"
    validation {
      condition =var.aws_region =="ap-south-1"
      error_message = "the aws region must be one of the following region"
    }
  
}
provider "aws" {
    region = "us-east-1"
  
}

resource "aws_s3_bucket" "new123" {
    bucket = "newmyterraformbucket"
  
}