variable "security_groups" {}

variable "subnets" {
    type = list(string)
    default = [ "web_public-2.subnet_id", "web_public-1.subnet_id" ]
}

variable "internal" {
    type = bool
    default = false   
}

variable "enable_deletion_protection" {
    type = bool
    default = false   
}

variable "port" {
    type = number
    default = 80  
}

variable "vpc_id" {}

variable "target_id" {}

variable "port_HTTPS" {
    type = number
    default = 443  
}