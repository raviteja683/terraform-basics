resource "aws_instance" "web" {
  ami                    = "ami-0c1d144c8fdd8d690"
  instance_type          = "t3.medium"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "Terrafrom-instance"
  }
}

output "private_IP_Address" {
  value = aws_instance.web.private_dns
}

#create a security group
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  //vpc_id      = aws_vpc.main.id

  ingress {
    description      = "SSH from Internet"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}