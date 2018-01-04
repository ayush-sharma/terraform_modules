resource "aws_autoscaling_policy" "autoscaling_policy" {
  name                   = "${var.name}"
  scaling_adjustment     = "${var.scaling_adjustment}"
  adjustment_type        = "${var.adjustment_type}"
  cooldown               = "${var.cooldown}"
  autoscaling_group_name = "${var.autoscaling_group_name}"
  policy_type            = "${var.policy_type}"

  lifecycle {
    create_before_destroy = true
  }
}
