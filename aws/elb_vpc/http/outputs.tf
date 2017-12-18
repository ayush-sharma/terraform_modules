output "elb_name" {
  value = "${aws_elb.elb.name}"
}

output "elb_dns" {
  value = "${aws_elb.elb.dns_name}"
}

output "elb_zone_id" {
  value = "${aws_elb.elb.zone_id}"
}
