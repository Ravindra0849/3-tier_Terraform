

resource "aws_subnet" "web_public-1" {
    vpc_id = var.vpc_id
    cidr_block = var.web_public-1_cidr
    map_public_ip_on_launch = var.map_public_ip_on_launch

    tags = var.tags_public-1

}

resource "aws_subnet" "web_public-2" {
    vpc_id = var.vpc_id
    cidr_block = var.web_public-2_cidr
    map_public_ip_on_launch = var.map_public_ip_on_launch

    tags = var.tags_public-2

}


resource "aws_subnet" "App_private-1" {
    vpc_id = var.vpc_id
    cidr_block = var.App_private-1_cidr
    map_public_ip_on_launch = var.map_public_ip_on_APP

    tags = var.tags_private-1

}

resource "aws_subnet" "App_private-2" {
    vpc_id = var.vpc_id
    cidr_block = var.App_private-2_cidr
    map_public_ip_on_launch = var.map_public_ip_on_APP

    tags = var.tags_private-2

}

resource "aws_subnet" "DB_private-1" {
    vpc_id = var.vpc_id
    cidr_block = var.DB_private-1_cidr
    map_public_ip_on_launch = var.map_public_ip_on_DB

    tags = var.tags_DB_private-1

}

resource "aws_subnet" "DB_private-2" {
    vpc_id = var.vpc_id
    cidr_block = var.DB_private-2_cidr
    map_public_ip_on_launch = var.map_public_ip_on_DB

    tags = var.tags_DB_private-2

}
