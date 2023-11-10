
variable "ami" {
    type = string
    default = "ami-0fc5d935ebf8bc3bc"
}

variable "key_name" {
    type = string
    default = "project-key"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "subnet_id" {}

variable "security_groups_id" {}

variable "tags" {
    type = map
    default = {
        Name = "Project_Web_EC2"
        Terraform = "true"
    }
}

variable "SSH_SG_Bastion" {
    type = string
    default = "SSH_SG.security_groups"
}

variable "tags_App" {
    type = map
    default = {
        Name = "Project_App_EC2"
        Terraform = "true"
    }
}

# For DataBase Server 

variable "subnet_ids" {
    type = list(string)
    default = [ "DB_private-1.subnet_id", "DB_private-2.subnet_id" ]  
}

variable "allocated_storage" {
    type = number
    default = 10  
}

variable "engine" {
    type = string
    default = "mysql"  
}

variable "instance_class" {
    type = string
    default = "db.t2.micro"  
}

variable "db_name" {
    type = string
    default = "sqldb"
}

variable "username" {
    type = string
    default = "admin"
}

variable "password" {
    type = string
    default = "Ravindra"
}

variable "db_subnet_group_name" {}

variable "vpc_security_group_ids" {}