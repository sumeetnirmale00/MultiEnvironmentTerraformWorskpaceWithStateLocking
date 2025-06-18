resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = "sumeet-terraform-dev-backend-bucket"

  tags = {
    Name        = "Terraform Backend Bucket"
    Environment = "Dev"
  }
}
