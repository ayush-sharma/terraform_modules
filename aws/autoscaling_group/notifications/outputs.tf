output "asg_group_names" {
  value = "${aws_autoscaling_notification.notification.group_names}"
}
