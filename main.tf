terraform {
  required_version = ">= 0.11.12"

  backend "s3" {
    bucket = "tf-remote-state-hatchdata-iam"
    workspace_key_prefix = "sample-terraform-project"
    key = "terraform.tfstate"
    region ="us-west-2"
  }
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

