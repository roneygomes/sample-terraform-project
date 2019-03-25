terraform {
  required_version = ">= 0.11.12"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "amazon_linux" {
    ami = "ami-0b59bfac6be064b78"
    instance_type = "t2.nano"
    tags = {
        Name = "sample-codepipeline-instance"
    }
}

