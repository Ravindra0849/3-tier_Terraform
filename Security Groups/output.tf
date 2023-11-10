output "ALB_SG" {
    value = "aws_security_group.Project_ALB_SG.id"
}

output "SSH_SG" {
    value = "aws_security_group.SSH_Sg.id"  
    description = "Ouput of SSH security group"
}

output "Web_tier_SG" {
    value = "aws_security_group.Web_tier_SG.id"
    description = "Output of Web Server Security Group"
}

output "DB_SG" {
    value = "aws_security_group.DB_SG.id"
    description = "DataBase Server security group ID "  
}