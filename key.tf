resource "aws_key_pair" "deployer" {
  key_name   = var.key_name # Name of the key pair
  public_key = file(var.public_key_path) # Path to the public key file

  tags = {
    Name        = "${var.environment}-Automate Key Pair" # Tag the key pair
    Environment = var.environment
  }
}