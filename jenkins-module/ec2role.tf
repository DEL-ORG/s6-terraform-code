resource "aws_iam_role" "example_role" {
  name               = format("${var.tags.policy}-%s", var.tags["branch"])
  description        = "Custom policy for EC2 full access"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "example_ec2_policy_attachment" {
  role       = aws_iam_role.example_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_instance" "example_instance" {
  ami                  = var.instance_params["instance_ID"]
  instance_type        = var.instance_params["instance_type"]
  iam_instance_profile = aws_iam_instance_profile.ec2_instance_profile.name
}

resource "aws_iam_instance_profile" "ec2_instance_profile" {
  name = aws_iam_role.example_role.name
  role = aws_iam_role.example_role.id
}

