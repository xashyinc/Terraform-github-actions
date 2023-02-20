variable "ami" {
  type = map(string)

  default = {
    "us-west-1" = "ami-04169656fea786776"
    "us-west-2" = "ami-0f1a5f5ada0e7da53"
  }
}
variable "public_key_material" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDpf20b/El4fPEOcgasKr+Jk+jpSm0so0HTt+zyca5YoyK4AGD9bROpK/I4kvTmXUuBZU0B3/xW4Sasta/NwG7fqYYGXpHFxG+Xofz6AHNvkkZz9tHUNJHzn5XVYhmB2+C/6e3re7MKlx0EZgj4NlhhltAGZUBN7ba7El8DzYZVqPpz/NTU2vq8BZr7GH0iOxdGdUVDzwA0Sd+8U2HQLmx8FSm1xp2KHru9EeujgKX1T0IpcfAG8SAEfIcCFZlBsdOiesb9s/Wkrqs9J+IMqgfDLZcRzOsubh6cfCfmY2E5vOb6VL2jpiApdVouoIszLXFdVCJk2X2PI5Ii+DgItqMlaBJjuWQGtCiEb+Uhuz+s+5OTY+2GZoj8deP52GwmyuVIFSJN1vWqhFO2RDVGpIDNg9LS4C7L9IJF5KZFtr/+zafwfwwXyLXInZqW5OARnaXhS8Q5jjrSFqxI6HLAbtYR6AUDq+SVZNgMEAkOp6HM/kBjlfpaJXvoH9W7lUCNUgk= akuma@DESKTOP-045USBT"
}
variable "key-name" {
  default = "tfkp"
}
variable "public-instance-count" {
  default = "3"
}
variable "private-instance-count" {
  default = "3"
}

variable "instance_type" {
  default = "t2.micro"
}

 variable "region" {
  default = "us-west-2"
} 
variable "public-subnets-ids" {}
variable "private-subnets-ids" {}