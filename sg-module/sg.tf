resource "aws_security_group" "revive_sg" {
  name   = format("%s-%s-jenkins-sg", var.tags["project"], var.tags["environment"])
  vpc_id = var.vpc_id
  tags = merge(var.tags, {
    Name = format("%s-%s-sg", var.tags["project"], var.tags["environment"])
    },
  )
}