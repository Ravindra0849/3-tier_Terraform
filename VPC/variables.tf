variable "cidr_block" {
    type = string
    description = "Vpc for 3-tier application"
    default = "10.0.0.0/16"
}

variable "instance_tenancy" {
    type = string
    default = "default" 
}

variable "dns_support" {
  type = bool
  default = true
}

variable "hostname" {
  type = bool
  default = true
}

variable "tags" {
    type = map
    default = {
        Name = "project_vpc"
        Terraform = "true"        
    }
}