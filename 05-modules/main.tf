//calling ec2 module
module "ec2" {
  source = "./ec2"
  sg     = module.sg.sgid    //step 2: passing the info to moudule that needs this variable over the root module
}

//calling sg module
module "sg" {
  source = "./sg"
}