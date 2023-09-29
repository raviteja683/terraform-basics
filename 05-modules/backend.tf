provider "aws" {
}
terraform {
  backend "s3" {
    bucket = "b55-terraform-state-demo"
    key    = "tfmodule/terraform.tfstate"
    region = "us-east-1"
  }
}