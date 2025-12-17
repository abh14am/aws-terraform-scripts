provider "aws" {
  region = "ap-south-1"
}

variable "domain_name" {
  default = "pointbreak.space"
}

#CREATE the Hosted Zone
resource "aws_route53_zone" "main" {
  name = var.domain_name
}

output "hostinger_nameservers" {
  description = "COPY THESE TO HOSTINGER CONTROL PANEL"
  value       = aws_route53_zone.main.name_servers
}