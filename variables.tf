variable "region" {
  default = "us-east-1"
}

variable "key_name" {
  default = "my-key-test"
}

variable "public_key_path" {
  default = "my-key.pub"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-0a7d80731ae1b2435" # Amazon Linux 2 AMI (for us-east-1)
  
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
  default = "10.0.1.0/24"
}
  
variable "private_subnet_cidr_block" {
  default = "10.0.2.0/24"
}

variable "environment" {
  default = "test"
  }