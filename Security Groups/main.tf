resource "aws_security_group" "Project_ALB_SG" {
    name = "ALB Security Group"
    description = "Allow TLS inbound traffic"  
    vpc_id = var.vpc_id
    ingress {
        from_port        = 443
        to_port          = 443
        protocol         = "tcp"
        cidr_blocks      = [var.ALB_SG_cidr]
    }

    ingress {
        from_port        = 80
        to_port          = 80
        protocol         = "HTTP"
        cidr_blocks      = [var.ALB_SG_cidr]
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = [var.ALB_SG_cidr]

    }

    tags = var.tags
}


# Creation of Security Group for Bastion Server SSH 

resource "aws_security_group" "SSH_Sg" {
    name = "SSH Access"
    description = "Enable SSH port on 22"
    vpc_id = var.vpc_id

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "ssh"
        cidr_blocks = [var.SSH_SG_cidr]
    }

    ingress {
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = [var.SSH_SG_cidr]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [var.SSH_SG_cidr]
    }

    tags = var.tags_SSH
}

# Security Group for Web Server

resource "aws_security_group" "Web_tier_SG" {
    name = "Web Server Security Group"
    description = "Enable HTTP/HTTPS ports for access"
    vpc_id = var.vpc_id

    ingress {
        description = "http access"
        from_port = 80
        protocol = "tcp"
        to_port = 80
        security_groups = var.security_groups
    }

    ingress {
        description = "https access"
        from_port = 443
        protocol = "tcp"
        to_port = 443
        security_groups = var.security_groups
    }

    ingress {
        description = "ssh access"
        from_port = 22
        protocol = "tcp"
        to_port = 22
        security_groups = [var.SSH_SG_Bastion]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = var.tags_web_SG
}

# Security Group for DB Server

resource "aws_security_group" "DB_SG" {
    name = "Database server SG"
    description = "Enable MYSQL access port on 3306"
    vpc_id = var.vpc_id

    ingress {
        description = "MYSQL Access"
        from_port = var.from_port
        to_port = var.to_port
        protocol = "tcp"
        security_groups = ["${aws_security_group.Web_tier_SG.id}"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [var.DB_Cidr]
    }

    tags = var.tags_DB_SG
}


