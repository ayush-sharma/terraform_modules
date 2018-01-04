resource "aws_cloudwatch_metric_alarm" "cloudwatch_alarm" {
  alarm_name          = "${var.alarm_name}"
  comparison_operator = "${var.comparison_operator}"
  evaluation_periods  = "${var.evaluation_periods}"
  metric_name         = "${var.metric_name}"
  namespace           = "${var.namespace}"
  period              = "${var.period}"
  statistic           = "${var.statistic}"
  threshold           = "${var.threshold}"
  alarm_description   = "${var.alarm_description} Created by Terraform."

  dimensions = "${var.dimensions}"

  alarm_actions = ["${var.alarm_actions}"]

  insufficient_data_actions = "${var.insufficient_data_actions}"

  lifecycle {
    create_before_destroy = true
  }
}
