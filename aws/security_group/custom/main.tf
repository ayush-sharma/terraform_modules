resource "aws_security_group" "security_group" {
  name   = "${var.name}_sg"
  vpc_id = "${var.vpc_id}"

  ingress = "${var.ingress}"
  egress  = "${var.egress}"

  tags = {
    Name        = "${var.name}_elb_sg"
    created_by  = "Terraform"
    cost_center = "${var.name}"
  }
}
