resource "aws_alb" "alb" {
  name                       = "${var.name}"
  subnets                    = ["${var.subnets}"]
  security_groups            = ["${var.security_groups}"]
  internal                   = "${var.internal}"
  idle_timeout               = "${var.idle_timeout}"
  tags                       = "${var.tags}"
  access_logs                = ["${var.access_logs}"]
  load_balancer_type         = "application"
  enable_deletion_protection = "${var.enable_deletion_protection}"
}
