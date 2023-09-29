resource "aws_instance" "moweb" {
  ami                    = "ami-0c1d144c8fdd8d690"
  instance_type          = "t3.medium"
  vpc_security_group_ids = [aws_security_group.allows_ssh.id] //calling security group id

  tags = {
    Name = "Module-instance"
  }
}

output "private_IP_Address" {
  value = aws_instance.moweb.private_dns
}

variable "sg" {                 //step 3: declare a variable, or calling variable from main module
}       