resource "aws_route53_record" "route53_record" {
  zone_id = "${var.zone_id}"
  name    = "${var.name}"
  type    = "${var.type}"

  alias {
    name                   = "${var.alias_target}"
    zone_id                = "${var.alias_zone_id}"
    evaluate_target_health = "${var.alias_evaluate_target_health}"
  }

  lifecycle {
    create_before_destroy = true
  }
}
