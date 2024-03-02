resource "aws_instance" "revive_jenkins" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  key_name                    = data.aws_key_pair.jen_key.key_name
  tenancy                     = var.tenancy
  associate_public_ip_address = var.pub_ip
  vpc_security_group_ids      = [var.sg]
  subnet_id                   = var.subnet_id[0]
  disable_api_termination     = var.api_termination
  iam_instance_profile        = aws_iam_instance_profile.jenkins_ec2_profile.name


  root_block_device {
    volume_size = var.volume_size
  }

  lifecycle {
    create_before_destroy = true
  }

  tags = merge(var.tags, {
    Name = format("%s-revive-jenkins", var.tags["id"])
  })

  depends_on = [
    data.aws_key_pair.jen_key
  ]

}