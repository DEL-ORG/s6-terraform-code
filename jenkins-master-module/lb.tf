resource "aws_lb" "jenkins_lb" {
  name               = "revive-jenkins-lb"
  internal           = var.internal
  load_balancer_type = var.lb_type
  security_groups    = [data.aws_security_group.revive_sg.id]
  subnet_mapping {
    subnet_id     = data.aws_subnet.sub_pub.id
    allocation_id = data.aws_eip.eip_allocation_id.id
  }

  enable_deletion_protection = var.lb_protection

  tags = merge(var.tags, {
    Name = format("%s-revive-jenkins-lb", var.tags["id"])
  })

}

resource "aws_lb_listener" "jenkins_lb_listener" {
  load_balancer_arn = aws_lb.jenkins_lb.arn
  port              = "80"
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.jenkins_lb_tg.id


  }
}

resource "aws_lb_target_group" "jenkins_lb_tg" {
  name        = "revive-jenkins-tg"
  target_type = "instance"
  port        = 8080
  protocol    = "TCP"
  vpc_id      = data.aws_vpc.revive_vpc.id
  tags = merge(var.tags, {
    Name = format("revive-%s-jenkins-tg", var.tags["id"])
  })
}
