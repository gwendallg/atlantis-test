remote_state {
  backend = "s3"
  config = {
    encrypt        = true
    bucket         = "${get_aws_account_id()}-global-infrastructure-live"
    key            = "stage/eu-west-3/${path_relative_to_include()}/terraform.tfstate"
    region         = "eu-west-3"
    dynamodb_table = "terraform-locks"
  }
}

inputs = {

  # environmental informations
  aws_region                    = "eu-west-1"
  environment                   = "stage"

  # S3 bucket tfstate informations
  tfstate_global_bucket        = "${get_aws_account_id()}-global-infrastructure-live"
  tfstate_global_bucket_region = "eu-west-3"

}