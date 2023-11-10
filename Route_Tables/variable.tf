# Variables for  Internet Gateway Route Table

variable "vpc_id" {}

variable "web_route_cidr" {
    type = string
    default = "0.0.0.0/0"  
}

variable "gateway_id" {}

variable "tags" {
    type = map
    default = {
        Name = "Web_route"
        Terraform = "true"
    }  
}


# Variables for  NAT Gateway Route Table

variable "nat_gateway_id" {}


variable "Nat_route_cidr" {
    type = string
    default = "0.0.0.0/0"  
}

variable "Nat_tags" {
    type = map
    default = {
        Name = "Nat_route"
        Terraform = "true"
    }  
}