resource "aws_alb_target_group" "alb_target_group" {
  name         = "${var.name}"
  port         = "${var.port}"
  protocol     = "${var.protocol}"
  vpc_id       = "${var.vpc_id}"
  tags         = "${var.tags}"
  stickiness   = ["${var.stickiness}"]
  health_check = "${var.health_check}"
}
