provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

data "aws_caller_identity" "current" {}

output "account_id" {
  value = "${data.aws_caller_identity.current.account_id}"
}

output "test" {
  value = "my test"
}

output "test2" {
  value = "my test"
}
