terraform {
  backend "s3" {
    bucket = "terraformmybucket1"
    key = "day-03/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-state-lock-dynamo" 
    encrypt = true
    
  }
}