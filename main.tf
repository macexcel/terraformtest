terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "4.15.0"
        }
    }
}

provider "aws" {
    region = "${var.AWS_REGION}"
    access_key = "${var.AWS_ACCESS_KEY}"
    secret_key = "${var.AWS_SECRET_ACCESS_KEY}"
}

resource "aws_instance" "terraform-instance" {
    ami = "ami-081ce1b631be2b337"
    instance_type = "t2.micro"
    tags = {
        Name = "terraform_vm"
    }
}
