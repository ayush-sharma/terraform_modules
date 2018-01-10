variable "name" {}

variable "subnets" {
  type = "list"
}

variable "security_groups" {
  type = "list"
}

variable "internal" {}

variable "idle_timeout" {
  default = "60"
}

variable "tags" {
  type = "map"

  default = {
    created_by = "Terraform"
  }
}

variable "access_logs" {
  type    = "list"
  default = []
}

variable "enable_deletion_protection" {
  default = true
}
