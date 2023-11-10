resource "aws_vpc" "project_vpc" {
    cidr_block = var.cidr_block
    instance_tenancy = var.instance_tenancy
    enable_dns_support = var.dns_support
    enable_dns_hostnames = var.hostname
    
    tags = var.tags
}

output "project_vpc_id" {
    value = "aws_vpc.project_vpc.id"
    description = "The ID of the VPC"
}
