resource "aws_instance" "revive_jenkins" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  key_name                    = data.aws_key_pair.jen_key
  tenancy                     = var.tenancy
  associate_public_ip_address = var.pub_ip
  vpc_security_group_ids      = [aws_security_group.jenkins_sg.id]
  subnet_id                   = var.subnet_id[0]
  disable_api_termination     = var.api_termination


  root_block_device {
    volume_size = var.volume_size
  }

  lifecycle {
    prevent_destroy = true
  }

  tags = merge(var.tags, {
    Name = format("%s-revive-jenkins", var.tags["id"])
  })

}