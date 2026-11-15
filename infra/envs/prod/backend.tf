# Create this bucket first (see README). Never keep prod state locally.
terraform {
  backend "s3" {
    bucket       = "REPLACE-ME-tfstate-bucket"
    key          = "asg/prod/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true # S3 native locking (Terraform >= 1.10), no DynamoDB needed
  }
}
