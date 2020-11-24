variable "region" {
  type    = string
  default = "us-west-2"

}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  type    = list
  default = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
}


#variable "azs" {
#  type    = list
#  default = ["us-west-2a", "us-west-2b", "us-west-2c"]
#}

# Declare the data source
data "aws_availability_zones" "azs" {
  state = "available"
}