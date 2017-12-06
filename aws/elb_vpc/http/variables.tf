variable "name" {}
variable "access_logs" {}

variable "security_groups" {
  type = "list"
}

variable "subnets" {
  type = "list"
}

variable "instances" {
  type = "list"
}

variable "internal" {}

variable "listener_1" {
  type = "map"
}

variable "listener_2" {
  type = "map"
}

variable "health_check" {
  type = "map"
}

variable "cross_zone_load_balancing" {}

variable "idle_timeout" {
  default = "60"
}

variable "connection_draining" {}
variable "connection_draining_timeout" {}

variable "tags" {
  type = "map"
}
