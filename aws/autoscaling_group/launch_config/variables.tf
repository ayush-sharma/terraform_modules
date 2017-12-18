variable "ami_filter_name" {}

variable "ami_filter_virtualization_type" {
  type = "list"
}

variable "ami_filter_owners" {
  type = "list"
}

variable "instance_type" {}

variable "iam_instance_profile" {}

variable "instance_key_name" {}
variable "associate_public_ip_address" {}

variable "root_disk_volume_type" {}

variable "root_disk_volume_size" {}

variable "root_disk_delete_on_termination" {}

variable "security_groups" {
  type = "list"
}
