resource "aws_instance" "web" {
  ami           = "ami-0c1d144c8fdd8d690"
  instance_type = "t3.medium"

  tags = {
    Name = "Terrafrom-instance"
  }
}