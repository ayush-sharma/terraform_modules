output "name" {
  value = "${aws_alb.alb.name}"
}

output "arn" {
  value = "${aws_alb.alb.arn}"
}

output "dns_name" {
  value = "${aws_alb.alb.dns_name}"
}

output "zone_id" {
  value = "${aws_alb.alb.zone_id}"
}

output "arn_suffix" {
  value = "${aws_alb.alb.arn_suffix}"
}
