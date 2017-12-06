output "elb_name" {
  value = "${aws_elb.elb.name}"
}

output "elb_dns" {
  value = "${aws_elb.elb.dns_name}"
}