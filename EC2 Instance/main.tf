# Create an EC2 Instances for Web Server and App Server

resource "aws_instance" "Web_server" {
    ami = var.ami
    key_name = var.key_name
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    security_groups = var.security_groups_id
    
    tags = var.tags
}

resource "aws_instance" "App_Server" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    security_groups = [var.SSH_SG_Bastion]
    key_name = var.key_name

    tags = var.tags_App
}


# Create a file for the Database Instance.

resource "aws_db_subnet_group" "database-subnet-group" {
    name = "database subnets"
    subnet_ids = var.subnet_ids
    description = "subnet group for database instance"

    tags = {
        Name = "Database-subnet"
    }
}

resource "aws_db_instance" "database-instance" {
    allocated_storage = var.allocated_storage
    engine = var.engine
    engine_version = "5.7"
    instance_class = var.instance_class
    db_name = var.db_name
    username = var.username
    password = var.password
    parameter_group_name = "default.mysql5.7"
    skip_final_snapshot = true
    availability_zone = "us-east-1b"
    db_subnet_group_name = var.db_subnet_group_name
    vpc_security_group_ids = [var.vpc_security_group_ids]
}

