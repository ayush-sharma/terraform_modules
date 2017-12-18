variable "placement_group_name" {}

variable "cluster_strategy" {
  default = "spread"
}

variable "availability_zones" {
  type = "list"
}

variable "name" {}

variable "min_size" {}
variable "max_size" {}
variable "desired_size" {}
variable "health_check_grace_period" {}
variable "health_check_type" {}
variable "default_cooldown" {}

variable "load_balancers" {
  type = "list"
}

variable "tags" {
  type = "map"

  default = {
    created_by = "Terraform"
  }
}

variable "launch_configuration" {}
