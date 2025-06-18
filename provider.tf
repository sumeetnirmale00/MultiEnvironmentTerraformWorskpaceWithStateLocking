provider "aws" {
  region = var.region # AWS region to deploy resources
}

# terraform {
#   backend "s3" {
#     bucket         = "sumeet-terraform-dev-backend-bucket""sumeet-terraform-backend-bucket"
#     key            = "global/sumeet/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "sumeet-terraform-dev-lock-table"
#     encrypt        = true
#   }
# }
