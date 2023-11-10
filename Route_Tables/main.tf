
# Route Table for Internet Gateway

resource "aws_route_table" "Web_route" {
    vpc_id = var.vpc_id

    route {
        cidr_block = var.web_route_cidr
        gateway_id = var.gateway_id
    }

    tags = var.tags
}


# Route Table for NAT Gateway

resource "aws_route_table" "NAT_route" {
    vpc_id = var.vpc_id

    route {
        cidr_block = var.Nat_route_cidr
        nat_gateway_id = var.nat_gateway_id
    }

    tags = var.Nat_tags
}