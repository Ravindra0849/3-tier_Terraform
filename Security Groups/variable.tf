# Variables for ALB Security Group

variable "vpc_id" {}

variable "ALB_SG_cidr" {
    type = string
    default = "0.0.0.0/0"  
}

variable "tags" {
    type = map
    default = {
        Name = "Project_ALB_SG"
        Terraform = "true"
    }  
}


# Variables for Bastion Server SSH Security Group

variable "SSH_SG_cidr" {
    type = string
    default = "0.0.0.0/0"  
}

variable "SSH_SG_Bastion" {
    type = string
    default = "SSH_SG.security_groups"
}

variable "tags_SSH" {
    type = map
    default = {
        Name = "Baston_SSH_SG"
        Terraform = "true"
    }  
}

# Security Group for Web Server

variable "security_groups" {}

variable "tags_web_SG" {
    type = map
    default = {
        Name = "Web_server_SG"
        Terraform = "true"
    }  
}

# Security Group for DB Server

variable "from_port" {
    type = number
    default = 3306
}

variable "to_port" {
    type = number
    default = 3306
}

variable "DB_Cidr" {
    type = string
    default = "0.0.0.0/0"  
}

variable "tags_DB_SG" {
    type = map
    default = {
        Name = "DB_server_SG"
        Terraform = "true"
    }  
}