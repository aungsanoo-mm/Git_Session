terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "example_server" {
  ami           = "ami-0f1a3c737e1195eeb"
  instance_type = "t2.micro"

  tags = {
    Name = "JacksBlogExample"
  }
}
