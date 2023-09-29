resource "aws_instance" "web" {
  ami           = "ami-0c1d144c8fdd8d690"
  instance_type = "t3.micro"
  count  = 2

  tags = {
    Name = "Terrafrom-web-instance-${count.index+1}"
  }
}