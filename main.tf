terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "4.15.0"
        }
    }
}

provider "aws" {
    region = "${var.aws_region}"
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
}

resource "aws_instance" "terraform-instance" {
    ami = "ami-081ce1b631be2b337"
    instance_type = "t2.micro"
    tags = {
        Name = "terraform_vm"
    }
}
