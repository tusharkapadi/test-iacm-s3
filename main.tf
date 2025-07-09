terraform {
    backend "s3" {
        bucket = "migration-demo"
        key = "env1/terraform.tfstate"
        region = "us-west-2"
    }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "app1" {
    instance_type = "t2.micro"
    ami = "ami-0bb7d64eeag57c9a9"
    tags = {
        "team" = "app-team"
        "costcentre" = "engineering"
    }
}
