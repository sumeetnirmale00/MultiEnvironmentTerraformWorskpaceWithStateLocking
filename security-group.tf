resource "aws_security_group" "instance_sg" { # Security Group for Instances
  name        = "instance-sg"
  description = "Allow 22, 443, 8080"
  vpc_id      = aws_vpc.my_vpc.id 

  ingress { # Ingress rules for the security group
    description = "SSH" # Allow SSH access
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress { 
    description = "HTTPS" # Allow HTTPS access
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP-alt (8080)" # Allow HTTP access on port 8080
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP" # Allow HTTP access on port 80
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0 # Allow all outbound traffic
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.environment}-Automate SG" # Tag the security group
    Environment = var.environment
  }
}
