
output "Elastic_Ip" {
    value = "aws_eip.My_EIP.id"  # it gives the elastic ip address as output for nat gateway
    description = "The ID of the VPC"
}