variable "name" {}
variable "port" {}
variable "protocol" {}
variable "vpc_id" {}

variable "tags" {
  type = "map"

  default = {
    created_by = "Terraform"
  }
}

variable "stickiness" {
  type = "list"

  default = [{
    type            = "lb_cookie"
    cookie_duration = "86400"
    enabled         = false
  }]
}

variable "health_check" {
  type = "list"
}
