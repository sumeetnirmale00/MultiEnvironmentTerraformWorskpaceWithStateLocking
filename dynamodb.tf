resource "aws_dynamodb_table" "terraform_lock_table" {
  name         = "sumeet-terraform-lock-table"   # Change name if needed
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"  # "S" = String
  }

  tags = {
    Name        = "Terraform State Lock Table"
    Environment = "prod"
  }
}
