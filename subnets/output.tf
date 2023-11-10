
output "web_public-2" {
    value = "aws_subnet.web_public-2.id"
    description = "printing of webserver public ip-2"
}

output "web_public-1" {
    value = "aws_subnet.web_public-1.id"
    description = "printing of webserver public ip-1"
}

output "App_private-1" {
    value = "aws_subnet.App_private-1.id" 
    description = "Printing app subnet-1 ip"
}

output "App_private-2" {
    value = "aws_subnet.App_private-2.id" 
    description = "Printing app subnet-2 ip"
}

output "DB_private-1" {
    value = "aws_subnet.DB_private-1.id" 
    description = "Printing DB subnet-1 ip"
}

output "DB_private-2" {
    value = "aws_subnet.DB_private-2.id" 
    description = "Printing DB subnet-2 ip"
}