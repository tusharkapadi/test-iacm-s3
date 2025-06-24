terraform {
    backend "s3" {
        bucket = "migration-demo"
        key = "terraform.tfstate"
        region = "us-east-1"
    }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "app1" {
    instance_type = var.instance.type
    ami = "ami-0bb7d64eeag57c9a9"
    tags = {
        "team" = "app-team"
        "costcentre" = "engineering"
    }
}
