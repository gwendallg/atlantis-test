# ---------------------------------------------------------------------------------------------------------------------
# TERRAGRUNT CONFIGURATION
# ---------------------------------------------------------------------------------------------------------------------

terraform {
  source = "../../../../_modules/s3//"
}

# Include all settings from the root terraform.tfvars file
include {
  path = find_in_parent_folders()
}

inputs = {
    bucket_name = "mon-repo"
}
