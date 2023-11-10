
# This Web server Route Table Association

resource "aws_route_table_association" "web_RTA" {
    subnet_id =  var.subnet_id
    route_table_id = var.route_table_id

}


# This App server Route Table Association

resource "aws_route_table_association" "App_RTA-1" {
    subnet_id =  var.subnet_id_app-1
    route_table_id = var.Nat_route_table_id

}


resource "aws_route_table_association" "App_RTA-2" {
    subnet_id =  var.subnet_id_app-2
    route_table_id = var.Nat_route_table_id

}


# This DB server Route Table Association

resource "aws_route_table_association" "DB_RTA-1" {
    subnet_id =  var.subnet_id_DB-1
    route_table_id = var.Nat_route_table_id

}



resource "aws_route_table_association" "DB_RTA-2" {
    subnet_id =  var.subnet_id_DB-2
    route_table_id = var.Nat_route_table_id

}
