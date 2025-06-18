resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = "sumeet-terraform-staging-backend-bucket"

  tags = {
    Name        = "Terraform Backend Bucket"
    Environment = "Staging"
  }
}
