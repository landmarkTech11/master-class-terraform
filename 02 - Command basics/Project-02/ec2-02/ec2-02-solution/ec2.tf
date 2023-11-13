# Terraform Settings Block
terraform {
  #required_version = "~> 1.0"
   required_version = "~> 1.6.3
  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 3.0"
        # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "joe"
  region  = "us-east-2"
}

# Resource Block

resource "aws_instance" "project2ec2" {
  ami           = "ami-089c26792dcb1fbd4"
  instance_type = "t2.micro"
  subnet_id     = "subnet-07128464d7032ebc1"

  tags = {
    Name = "FirstEC2"
  }
}
