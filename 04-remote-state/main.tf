data "aws_ami" "ami" {
  //executable_users = ["self"]
  most_recent      = true
  name_regex       = "DevOps-LabImage-CentOS7"
  owners           = ["self"]
}
resource "aws_instance" "web" {
  //ami           = "ami-0c1d144c8fdd8d690"
  ami           = "data.aws_ami.ami.image_id"
  instance_type = "t3.micro"
  count  = var.howManyYouwant

  tags = {
    Name = "Terrafrom-web-instance-${count.index+1}"
  }
}
variable "howManyYouwant" {
   default = 3
}

