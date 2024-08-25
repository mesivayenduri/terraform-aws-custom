variable "region" {
  type    = string
  default = "us-east-1"
}

variable "image" {
  type    = list(string)
  default = ["ami-0b72821e2f351e396"]
}

variable "instancetype" {
  type    = list(string)
  default = ["t2.micro"]
}

variable "servers" {
  type    = number
  default = 1
}

variable "port_and_protocol" {
  type = map(any)
  default = {
    "http"  = "8080"
    "https" = "443"
    "ssh"   = "22"
  }
}