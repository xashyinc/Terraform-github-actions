variable "project-name" {}
variable "engine" {
    default = "mysql"
}
variable "engine-version" {
    default = "8.0.25"
}     
variable "instance-class" {
    default = "db.t3.micro"
}    
variable "username" {}  
variable "password" {} 
variable "parameter-group-name" {
    default = "default.mysql8.0"
}
variable "allocated-storage" {
    default = 20
}
variable "identifier" {
  default = "ruby-app-instance"
}
variable "private-sg-id" {}
variable "name" {
    default = "private-subnet-group"
}
variable "private-subnets-ids" {}