resource "aws_alb_listener_rule" "listener_rule" {
  listener_arn = "${var.listener_arn}"
  priority     = "${var.priority}"

  action {
    type             = "forward"
    target_group_arn = "${var.target_group_arn}"
  }

  condition = "${var.condition}"
}
