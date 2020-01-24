terraform {
  backend "s3" {}
}

provider "aws" {
  version = ">=2.8"
  region  = var.aws_region
  assume_role {
    role_arn = var.role_arn
  }
}

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "this" {
  bucket = "${data.aws_caller_identity.current.account_id}-${var.environment}-${var.bucket_name}"
  acl    = "private"

  tags = {
    Name        = var.bucket_name
    Environment = var.environment
  }
}
