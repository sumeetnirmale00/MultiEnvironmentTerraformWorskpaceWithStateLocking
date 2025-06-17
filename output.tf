# output "public_ip" {
#   description = "Public IP of the instance"
#   value       = aws_instance.web[*].public_ip
# }

# output "public_dns" {
#   description = "Public DNS of the instance"
#   value       = aws_instance.web[*].public_dns
# }

# output "private_ip" {
#   description = "Private IP of the instance"
#   value       = aws_instance.web[*].private_ip
#   }


output "public_ip" {
  value = {
    for key, inst in aws_instance.web : key => inst.public_ip # Public IP addresses of the instances
  }
}

output "public_dns" {
  value = {
    for key, inst in aws_instance.web : key => inst.public_dns # Public DNS names of the instances
  }
}

output "private_ip" {
  value = {
    for key, inst in aws_instance.web : key => inst.private_ip # Private IP addresses of the instances
  }
}
