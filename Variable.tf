# AWS Instance key pair
    variable "key_pair" {
    description = "instance ssh key"
    type = string
    default = "emperor"
    }


    # AWS Instance Security group type - Dynamic block
    variable "ingressrules"{
    type = list(number)
    default = [80,443,8080,22]
    }

    variable "egressrules"{
    type = list(number)
    default = [80,443,25,3306,53,8080]
   }


  #AWS EC2 Instance Type - List
  variable "instance_type_list" {
  description = "EC2 Instance Type"
  type = list(string)
  default = ["t2.micro", "t2.medium", "t3.small"]
}


 #AWS EC2 Instance Type - Map
/* variable "instance_type_map" {
  description = "EC2 Instance Type"
  type = map(string)
  default = {
    "dev" = "t3.micro"
    "qa"  = "t3.small"
    "prod" = "t3.large"
  }
}*/
"~/terraform/var2.tf" 61L, 1208B 
