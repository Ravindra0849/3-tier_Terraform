resource "aws_internet_gateway" "Project_IGW" {
    vpc_id = var.vpc_id
}


variable "vpc_id" {}


output "IGW" {
    value =  "aws_internet_gateway.Project_IGW.id"
}