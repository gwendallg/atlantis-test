provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

output "test" {
  value = "my test"
}

output "test2" {
    value ="test"
}
