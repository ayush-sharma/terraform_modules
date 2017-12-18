output "policy_name" {
  value = "${aws_autoscaling_policy.autoscaling_policy.name}"
}

output "policy_arn" {
  value = "${aws_autoscaling_policy.autoscaling_policy.arn}"
}

output "adjustment_type" {
  value = "${aws_autoscaling_policy.autoscaling_policy.adjustment_type}"
}

output "scaling_adjustment" {
  value = "${aws_autoscaling_policy.autoscaling_policy.scaling_adjustment}"
}
