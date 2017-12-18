output "alarm_name" {
  value = "${aws_cloudwatch_metric_alarm.cloudwatch_alarm.alarm_name}"
}
