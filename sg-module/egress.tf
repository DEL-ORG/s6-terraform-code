resource "aws_security_group_rule" "revive_outbound" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = [aws_security_group.jenkins_sg.id, aws_security_group.bastion_sg.id, aws_security_group.lb_sg.id]
}