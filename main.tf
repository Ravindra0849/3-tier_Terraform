module "project_vpc" {
    source = "./VPC"
    
}

module "project_subnet" {
    source = "./subnets"
    vpc_id = "project_vpc.vpc_id"       # This is the Vpc Ip address coming from VPC output mention in main.tf file
}

module "Project_IGW" {
    source = "./Internet gateway"
    vpc_id = "project_vpc.vpc_id" 
}

module "My_EIP" {
    source = "./elastip Ip"  
}

module "nat_gateway" {
    source = "./Nat gateway"
    allocation_id = "Elastic_Ip.allocation_id"   # This is coming the output of Elastic ip 
    subnet_id = "web_public-2.subnet_id"          # This is coming from output of Webserver public ip-2
}

module "Route_table" {
    source = "./Route_Tables"
    vpc_id = "project_vpc.vpc_id" 
    gateway_id =  "IGW.gateway_id"  # this is internet gateway id from output
    nat_gateway_id = "Nat_GW.nat_gateway_id"

}

module "Route_table_association" {
    source = "./Route_table_association"
    subnet_id = "web_public-2.subnet_id"          # This is coming from output of Webserver public ip-2
    route_table_id = "Web_route.route_table_id"   # This is output of Web Route Table
}

module "security_groups" {
    source = "./Security Groups"
    vpc_id = "project_vpc.vpc_id"
    security_groups = ["ALB_SG.security_groups"]  # This is output of ALB Security Group
}

module "EC2" {
    source = "./EC2 Instance"
    subnet_id = "web_public-1.subnet_id"   # This is coming from output of Webserver public ip-1
    security_groups_id = ["ALB_SG.security_groups"] # This is output of ALB Security Group
    db_subnet_group_name = "database_subnet_groups.db_subnet_group_name"
    vpc_security_group_ids = "DB_SG.vpc_security_group_ids"
}

module "Auto_Scaling" {
    source = "./Auto Scaling Groups"
    subnet_id = "web_public-1.subnet_id"  # This is coming from output of Webserver public ip-1
}

module "Load_Balancer" {
    source = "./Load Balancer"
    security_groups = ["ALB_SG.security_groups"]
    vpc_id = "project_vpc.vpc_id" 
    target_id = "Web_server.target_id"
}