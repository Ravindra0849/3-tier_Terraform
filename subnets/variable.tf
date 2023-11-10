# Variables for the Web application

variable "web_public-1_cidr" {
    type = string
    description = "this is web server public cidr block"
    default = "10.0.1.0/24"
}

variable "vpc_id" {}

variable "map_public_ip_on_launch" {
    type = bool
    description = "to launch public ip for the ec2 instance"
    default = "true"  
}


variable "tags_public-1" {
    type = map
    default = {
        Name = "web_public_subnet"
        Terraform = "true"        
    }
}

variable "web_public-2_cidr" {
    type = string
    description = "this is web server private cidr block"
    default = "10.0.2.0/24"
}

variable "tags_public-2" {
    type = map
    default = {
        Name = "web_p_subnet"
        Terraform = "true"        
    }
}

# Variables for the APP application

variable "App_private-1_cidr" {
    type = string
    description = "this is web server public cidr block"
    default = "10.0.3.0/24"
}

variable "tags_private-1" {
    type = map
    default = {
        Name = "App_private-1_subnet"
        Terraform = "true"        
    }
}

variable "App_private-2_cidr" {
    type = string
    description = "this is web server private cidr block"
    default = "10.0.4.0/24"
}

variable "tags_private-2" {
    type = map
    default = {
        Name = "App_private-2_subnet"
        Terraform = "true"        
    }
}

variable "map_public_ip_on_APP" {
    type = bool
    description = "to launch public ip for the ec2 instance"
    default = "false"  
}

# Variables for the DB application

variable "DB_private-1_cidr" {
    type = string
    description = "this is web server public cidr block"
    default = "10.0.5.0/24"
}

variable "tags_DB_private-1" {
    type = map
    default = {
        Name = "DB_private-1_subnet"
        Terraform = "true"        
    }
}

variable "DB_private-2_cidr" {
    type = string
    description = "this is web server private cidr block"
    default = "10.0.6.0/24"
}

variable "tags_DB_private-2" {
    type = map
    default = {
        Terraform = "true"        
    }
}

variable "map_public_ip_on_DB" {
    type = bool
    description = "to launch public ip for the ec2 instance"
    default = "false"  
}