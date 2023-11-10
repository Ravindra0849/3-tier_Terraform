output "Web_server" {
    value = "aws_instance.Web_server.id"
    description = "instance id of web server"  
}

output "database_subnet_groups" {
    value = "aws_db_subnet_group.database-subnet-group.id"
    description = "DataBase Security group subnets"
}