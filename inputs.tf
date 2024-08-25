variable "region" {
  type    = string
  description = "selects the region to the default value set in the users AWS cli Config"
}

variable "image" {
  type    = list(string)
  description = "List of AMIs with EC2 instances gets created"
}

variable "instancetype" {
  type    = list(string)
  description = "List of Instance types should be provided by user"
}

variable "servers" {
  type    = number
  description = "Number of servers to be created"
}

variable "port_and_protocol" {
  type = map(any)
  description = "Provide the ingress rules with map. Eg {'HTTP':'8080', 'HTTPS':'443'}"
}