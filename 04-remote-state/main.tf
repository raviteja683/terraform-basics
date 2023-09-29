data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-CentOS7"
  owners           = ["self"]
}
resource "aws_instance" "web" {
  ami           = "ami-0c1d144c8fdd8d690"
  //ami           = "data.aws_ami.ami.image_id"
  instance_type = "t3.micro"
  count  = length(var.instances)

  tags = {
    Name = "${var.instances[count.index]}"
  }
}

variable "instances" {
  default = ["cart","catalogue","user"]
}
