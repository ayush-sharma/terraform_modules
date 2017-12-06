variable "zone_id" {}
variable "name" {}
variable "type" {}

variable "ttl" {
  default = "60"
}

variable "records" {
  type = "list"
}

variable "alias" {
  type = "list"
}