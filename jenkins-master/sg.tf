
resource "aws_security_group" "jenkins_sg" {
  name   = format("%s-%s-jenkins-sg", var.tags["project"], var.tags["environment"])
  vpc_id = var.vpc_id
  tags = merge(var.tags, {
    Name = format("%s-%s-jenkins-sg", var.tags["project"], var.tags["environment"])
    },
  )
}

resource "aws_security_group_rule" "jenkins_8080" {
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"
  security_group_id        = aws_security_group.jenkins_sg.id
  source_security_group_id = aws_security_group.jenkins_sg.id
}

resource "aws_security_group_rule" "jenkins_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = aws_security_group.jenkins_sg.id
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "jenkins_22" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.jenkins_sg.id
  cidr_blocks       = ["0.0.0.0/0"]
}

