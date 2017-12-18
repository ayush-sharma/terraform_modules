data "aws_ami" "ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["${var.ami_filter_name}"]
  }

  filter {
    name   = "virtualization-type"
    values = "${var.ami_filter_virtualization_type}"
  }

  owners = "${var.ami_filter_owners}"
}

resource "aws_launch_configuration" "launch_config" {
  name                        = "${data.aws_ami.ami.name}_${data.aws_ami.ami.id}"
  image_id                    = "${data.aws_ami.ami.id}"
  instance_type               = "${var.instance_type}"
  iam_instance_profile        = "${var.iam_instance_profile}"
  key_name                    = "${var.instance_key_name}"
  security_groups             = "${var.security_groups}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  enable_monitoring           = false

  root_block_device {
    volume_type           = "${var.root_disk_volume_type}"
    volume_size           = "${var.root_disk_volume_size}"
    delete_on_termination = "${var.root_disk_delete_on_termination}"
  }

  lifecycle {
    create_before_destroy = true
  }
}
