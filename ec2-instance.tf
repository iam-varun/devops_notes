provider "aws" {
  region    = "us-east-1"
  profile   = "terraform-user"
}

# resource "aws_vpc" "my_practice_vpc" {
#   cidr_block       = "10.0.0.0/16"
  

#   tags = {
#     Name = "my_practice_vpc"
#   }
# }


resource "aws_instance" "ec2_instance" {
  

  ami                    = "ami-0dfcb1ef8550277af"
  instance_type          = "t2.micro"
  key_name               = "jenkins_cicd"
  # vpc_id                 = "vpc-0c0f1d61362fcf8bb"
  vpc_security_group_ids = ["sg-01d9613c407501fba"]
  subnet_id              = "subnet-0a12523ae49584149"

  
}