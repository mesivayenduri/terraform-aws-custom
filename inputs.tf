variable "region" {
  type    = string
}

variable "image" {
  type    = list(string)
}

variable "instancetype" {
  type    = list(string)
}

variable "servers" {
  type    = number
}

variable "port_and_protocol" {
  type = map(any)
}