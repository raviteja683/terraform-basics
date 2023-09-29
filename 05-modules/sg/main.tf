
#create a security group
resource "aws_security_group" "allows_ssh" {
  name        = "allows_ssh"
  description = "Allows SSH inbound traffic"
  //vpc_id      = aws_vpc.main.id

  ingress {
    description      = "SSH from Public internet"
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
    Name = "allows_ssh"
  }
}

#step1: declare the output of sg and input to ec2
output "sgid" {
  value = aws_security_group.allows_ssh.id
}