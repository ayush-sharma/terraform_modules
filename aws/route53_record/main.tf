variable "zone_id" {}
variable "name" {}
variable "type" {}

variable "ttl" {
  default = "60"
}

variable "records" {
  type = "list"
}

resource "aws_route53_record" "route53_record" {
  zone_id = "${var.zone_id}"
  name    = "${var.name}"
  type    = "${var.type}"
  ttl     = "${var.ttl}"
  records = ["${var.records}"]
}
