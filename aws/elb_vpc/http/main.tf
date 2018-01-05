resource "aws_elb" "elb" {
  name                        = "${var.name}"
  access_logs                 = ["${var.access_logs}"]
  security_groups             = ["${var.security_groups}"]
  subnets                     = ["${var.subnets}"]
  instances                   = ["${var.instances}"]
  internal                    = "${var.internal}"
  listener                    = "${var.listener}"
  health_check                = "${var.health_check}"
  cross_zone_load_balancing   = "${var.cross_zone_load_balancing}"
  idle_timeout                = "${var.idle_timeout}"
  connection_draining         = "${var.connection_draining}"
  connection_draining_timeout = "${var.connection_draining_timeout}"
  tags                        = "${var.tags}"
}
