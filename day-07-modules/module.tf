module "cha" {
    source = "../day-01"
    ami_id =var.ami
    instance_type =var.type
    key = var.key
  
}