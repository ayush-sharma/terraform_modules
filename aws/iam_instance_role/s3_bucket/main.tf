variable "name" {}

variable "bucket_arns_list" {
  type = "list"
}

resource "aws_iam_role" "iam_role" {
  name = "${var.name}_iam"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "iam_role_policy" {
  name = "${var.name}_role_policy"
  role = "${aws_iam_role.iam_role.id}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
      {
          "Effect": "Allow",
          "Action": "s3:ListAllMyBuckets",
          "Resource": "arn:aws:s3:::*"
      },
      {
          "Effect": "Allow",
          "Action": "s3:*",
          "Resource": [
              "arn:aws:s3:::tc-backups-mysql",
              "arn:aws:s3:::tc-backups-mysql/*"
          ]
      }
  ]
}
EOF

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_iam_instance_profile" "iam_instance_profile" {
  name = "${var.name}_instance_profile"
  role = "${aws_iam_role.iam_role.name}"
}

output "iam_role_name" {
  value = "${aws_iam_role.iam_role.name}"
}

output "iam_instance_profile_name" {
  value = "${aws_iam_instance_profile.iam_instance_profile.name}"
}
