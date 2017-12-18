variable "name" {}

variable "access_logs" {
  type    = "list"
  default = []
}

variable "security_groups" {
  type = "list"
}

variable "subnets" {
  type = "list"
}

variable "instances" {
  type = "list"

  default = []
}

variable "internal" {}

variable "listener" {
  type = "list"
}

variable "health_check" {
  type = "list"
}

variable "cross_zone_load_balancing" {
  default = true
}

variable "idle_timeout" {
  default = "60"
}

variable "connection_draining" {
  default = false
}

variable "connection_draining_timeout" {
  default = "300"
}

variable "tags" {
  type = "map"

  default = {
    created_by = "Terraform"
  }
}
