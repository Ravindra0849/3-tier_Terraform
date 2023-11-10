variable "tags" {
    type = map  
    description = "creating elstic IP"
    default = {
        Name = "elastic ip"
        Terraform = "true" 
    }
}
