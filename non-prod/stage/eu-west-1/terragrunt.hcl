remote_state {
  backend = "s3"
  config = {
    encrypt        = true
    bucket         = "${get_aws_account_id()}-test-infrastructure-live"
    key            = "stage/eu-west-1/${path_relative_to_include()}/terraform.tfstate"
    region         = "eu-west-3"
    dynamodb_table = "terraform-locks"
  }
}

inputs = {

  # environmental informations
  aws_region                    = "eu-west-1"
  environment                   = "stage"
  profile                       = "adv-ops"

  # S3 bucket tfstate informations
  tfstate_global_bucket        = "${get_aws_account_id()}-global-infrastructure-live"
  tfstate_global_bucket_region = "eu-west-3"
  #role_arn = "arn:aws:iam::982489228146:role/AdventielAutomationAccessRole"

}
