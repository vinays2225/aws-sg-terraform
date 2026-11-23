#Mandatory
variable "project" {
    type=string
}
#Mandatory
variable "environment" {
  type=string
}
#Mandatory
variable "vpc_id" {
  type=string
}
#Optional
variable "sg-tags" {
  type=map
  default = {}
}
#Mandatory
variable "sg_name" {
  
}

