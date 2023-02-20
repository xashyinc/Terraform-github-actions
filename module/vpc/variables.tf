variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "pub-count" {
  type        = number
  default     = 3
}
variable "priv-count" {
  type        = number
  default     = 3
}
variable "project-name" {}
variable "subnet_cidr_prefix" {
  default = "10.0"
}

variable "default_route" {
  description = "Default Route from and to internet"
  default     = "0.0.0.0/0"
}
