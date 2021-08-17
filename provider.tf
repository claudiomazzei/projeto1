provider "aws" {
    region = var.instance_region
    profile = "default"
}

resource "aws_s3_bucket" "my-first-s3-automation" {
    bucket  = "my-first-s3-automation-20210816"
    acl     = "private"

    tags = {
      Name          = "My-bucket"
      Environment   = "dev"
      Managedby     = "Terraform"
    }
}