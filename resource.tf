resource "aws_instance" "web" {
  for_each = tomap({
    #Key = Instance Type
    "Terraform Instance 1" = "t2.nano", 
    "Terraform Instance 2" = "t2.nano",   
      })


  ami                         = var.ami_id # Amazon Linux 2 AMI (for us-east-1)
  instance_type               = each.value # Instance Type from the map
  subnet_id                   = aws_subnet.public.id # Use the public subnet for instances
  vpc_security_group_ids      = [aws_security_group.instance_sg.id] # Security group for the instances
  key_name                    = aws_key_pair.deployer.key_name # Key pair for SSH access
  associate_public_ip_address = true # Associate a public IP address
  user_data = file("user_data.sh") # User data script for instance initialization
  root_block_device { 
    volume_size = var.environment == "dev" ? 8 : 16 # Volume size based on environment
    volume_type = var.environment == "dev" ? "standard" : "gp2" # Volume type based on environment
    }

  tags = {
    Name = "${var.environment}-Automate-${each.key}" # Use the key as the instance name
  }
}
