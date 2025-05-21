# create EC2 instance on AWS

# where to create - provider name
# which region
provider "aws" {
    region = "eu-west-1"
}

# which service/resource to create
# NOTE app_instance is NOT the name of the VM, but the reference for tf code
resource "aws_instance" "app_instance" {
    # which image to use, AMI ID for AWS - ami-0c1c30571d2dae5c9 (ubuntu 22.04 LTS)
  ami = "ami-0c1c30571d2dae5c9"
  # which instance type - t3.micro
  instance_type = "t3.micro"
  # public IP
  associate_public_ip_address = true
  # name for instance
  tags ={
    Name = "tech504-nick-tf-test-app"
  }
}



# NEVER HARD CODE CREDENTIALS

# syntax for HCL - {key = value} 