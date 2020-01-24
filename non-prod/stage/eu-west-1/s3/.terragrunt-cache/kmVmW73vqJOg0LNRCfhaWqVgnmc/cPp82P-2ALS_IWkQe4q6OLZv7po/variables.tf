variable "bucket_name" {
    description = "Name of bucket"
    type = string
}

variable "aws_region" {
  description = "The aws region to deploy"
  type        = string
}

variable "environment" {
    description = "Environment of deployment"
    type = string
}

variable "role_arn" {
  
}
