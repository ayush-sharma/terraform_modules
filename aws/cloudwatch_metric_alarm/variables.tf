variable "alarm_name" {}
variable "comparison_operator" {}
variable "evaluation_periods" {}
variable "metric_name" {}
variable "namespace" {}
variable "period" {}
variable "statistic" {}
variable "threshold" {}
variable "alarm_description" {}

variable "dimensions" {
  type = "map"
}

variable "alarm_actions" {
  type = "list"
}

variable "insufficient_data_actions" {
  type = "list"
}
