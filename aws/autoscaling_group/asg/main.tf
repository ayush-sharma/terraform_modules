resource "aws_placement_group" "placement_group" {
  name     = "${var.placement_group_name}"
  strategy = "${var.cluster_strategy}"
}

resource "aws_autoscaling_group" "autoscaling_group" {
  availability_zones        = "${var.availability_zones}"
  name                      = "${var.name}"
  max_size                  = "${var.max_size}"
  min_size                  = "${var.min_size}"
  health_check_grace_period = "${var.health_check_grace_period}"
  health_check_type         = "${var.health_check_type}"
  desired_capacity          = "${var.desired_size}"
  force_delete              = false
  placement_group           = "${aws_placement_group.placement_group.id}"
  launch_configuration      = "${var.launch_configuration}"
  default_cooldown          = "${var.default_cooldown}"
  load_balancers            = "${var.load_balancers}"

  enabled_metrics = [
    "GroupMinSize",
    "GroupMaxSize",
    "GroupDesiredCapacity",
    "GroupInServiceInstances",
    "GroupPendingInstances",
    "GroupStandbyInstances",
    "GroupTerminatingInstances",
    "GroupTotalInstances",
  ]

  tags = "${var.tags}"

  lifecycle {
    create_before_destroy = true
  }
}
