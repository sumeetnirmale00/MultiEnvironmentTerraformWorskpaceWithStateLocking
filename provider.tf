provider "aws" {
  region = var.region # AWS region to deploy resources
}

terraform {
  backend "s3" {
    bucket         = "sumeet-terraform-prod-backend-bucket"
    key            = "global/sumeet/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "sumeet-terraform-prod-lock-table"
    encrypt        = true
  }
}
