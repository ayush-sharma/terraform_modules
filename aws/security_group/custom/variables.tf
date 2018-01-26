variable "name" {}

variable "vpc_id" {}

variable "ingress" {
  type = "list"
}

variable "egress" {
  type = "list"
}
