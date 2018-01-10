resource "aws_alb_listener" "alb_listener" {
  load_balancer_arn = "${var.load_balancer_arn}"
  port              = "${var.port}"
  protocol          = "${var.protocol}"
  ssl_policy        = "${var.ssl_policy}"
  certificate_arn   = "${var.certificate_arn}"

  default_action {
    target_group_arn = "${var.target_group_arn}"
    type             = "forward"
  }
}
