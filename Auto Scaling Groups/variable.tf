# For Web server Auto Scaling
variable "subnet_id" {} # this is output of web subnet public-1

variable "Web_tier_SG" {
    type = string
    default = "Web_tier_SG.security_groups"  # This is output of web server security group
}

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

# For App Server Auto Scaling

variable "App_subnet_id" {
    type = string
    default = "App_private-1.subnet_id" # This is ouput of App Subnet IP
}

variable "desired_capacity" {
    type = number
    default = 1
}

variable "max_size" {
    type  = number
    default = 2
}

variable "min_size" {
    type = number
    default = 1
}  

variable "SSH_SG_Bastion" {
    type = string
    default = "SSH_SG.security_groups" # This is output of SSH bastion security Group
}