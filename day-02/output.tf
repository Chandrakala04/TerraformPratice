output "public_ip" {
    value = aws_instance.dev.public_ip
  
}
output "instance" {
    value = aws_instance.dev.instance
  
}