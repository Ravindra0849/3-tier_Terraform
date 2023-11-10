resource "aws_nat_gateway" "nat-1" {
    allocation_id = var.allocation_id 
    subnet_id =  var.subnet_id

     tags = var.Nat
}

