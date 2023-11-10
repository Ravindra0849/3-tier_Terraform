variable "allocation_id" {}  # Here we are taking the value of elstic ip from output of elastic ip ==> check it in eastic ip outputs 

variable "subnet_id" {}    # Here we are taking the value of Subnet id from output of webserver public ip-2, ==> check it in subnets outputs 


variable "Nat" {
    type = map
    default = {
        Name = "my_NatGW"
        Terraform = "true"
    }
}