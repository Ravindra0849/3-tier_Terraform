variable "subnet_id" {}

variable "route_table_id" {}

variable "subnet_id_app-1" {
    default = "App_private-1.subnet_id"
}

variable "Nat_route_table_id" {
    default = "Nat_GW.route_table_id"
}

variable "subnet_id_app-2" {
    default = "App_private-2.subnet_id"
}

variable "subnet_id_DB-1" {
    default = "DB_private-1.subnet_id"
}

variable "subnet_id_DB-2" {
    default = "DB_private-2.subnet_id"
}