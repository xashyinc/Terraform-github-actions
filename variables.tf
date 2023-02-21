variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "region" {}
variable "project-name" {}
variable "default_route" {
  description = "Default Route from and to internet"
  default     = "0.0.0.0/0"
}
variable "username" {}  
variable "password" {} 

variable "aws_access_key_id" {
  type = string
  default = ""
}

variable "aws_secret_access_key" {
  type = string
  default = ""
}
