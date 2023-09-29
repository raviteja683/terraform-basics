data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-CentOS7"
  owners           = ["self"]
}
resource "aws_instance" "web" {
  //ami           = "ami-0c1d144c8fdd8d690"
  count         = length(var.instances)
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  tags = {
    Name = "${var.instances[count.index]}"
  }
}

variable "instances" {
  default = ["cart","catalogue","user"]
}
