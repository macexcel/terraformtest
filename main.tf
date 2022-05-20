terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "4.15.0"
        }
    }
}

provider "aws" {
    region = "${AWS_REGION}"
    access_key = "${AWS_ACCESS_KEY}"
    secret_key = "${AWS_SECRET_ACCESS_KEY}"
}

resource "aws_instance" "terraform-instance" {
    ami = "ami-081ce1b631be2b337"
    instance_type = "t2.micro"
    tags = {
        Name = "terraform_vm"
    }
}
