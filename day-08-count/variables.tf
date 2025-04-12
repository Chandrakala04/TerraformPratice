variable "ami_id" {
    type = string
    default = "ami-002f6e91abff6eb96"

  
}
variable "instance_type" {
    type = string
    default = "t2.micro"

    
  
}
variable "key" {
    type = string
    default = "mygit"
    
  
}
variable "users_name" {
    type = list(string)
    default = ["count1", "count2", "count3"]
  
}