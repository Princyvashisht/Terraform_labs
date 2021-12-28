provider "aws" {
  region = "us-east-1"
}

module "ASG_example" {
  source = "/Users/manishmyana/Desktop/Terraform_lab/prac/modules"
  instance_type = "t2.micro"
  min_size      =  3
  max_size      = 10
}
