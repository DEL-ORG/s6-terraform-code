resource "aws_security_group_rule" "revive_inbound" {
  for_each = { for pt, port in var.ports : pt => port }

  type              = "ingress"
  from_port         = each.value
  to_port           = each.value
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.revive_sg.id
}

resource "aws_security_group_rule" "web_ping" {
  type              = "ingress"
  from_port         = 8
  to_port           = 0
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.revive_sg.id
}