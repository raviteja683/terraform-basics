resource "aws_instance" "web" {
  ami                    = "ami-0c1d144c8fdd8d690"
  instance_type          = "t3.medium"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id] //calling security group id

  tags = {
    Name = "Terrafrom-instance"
  }
}

output "private_IP_Address" {
  value = aws_instance.web.private_dns
}