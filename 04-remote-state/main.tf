resource "aws_instance" "web" {
  ami           = "ami-0c1d144c8fdd8d690"
  instance_type = "t3.micro"
  count  = var.howManyYouwant

  tags = {
    Name = "Terrafrom-web-instance-${count.index+1}"
  }
}
variable "howManyYouwant" {
   default = 2
}