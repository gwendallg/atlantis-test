provider "aws" {
    region = "eu-west-1"
}

output "test" {
  value = "my test"
}

data "aws_caller_identity" "current" {}

output "account_id" {
  value = "${data.aws_caller_identity.current.account_id}"
}