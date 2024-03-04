resource "aws_autoscaling_group" "jenkins_autoscale" {
  name                = "jenkins_autoscale_gp"
  desired_capacity    = var.desired_capacity
  max_size            = var.max_size
  min_size            = var.min_size
  vpc_zone_identifier = ["subnet-01abc2601667ae7c2"]
  target_group_arns    = [aws_lb_target_group.jenkins_lb_tg.arn]

  launch_template {
    id      = aws_launch_template.jenkins_launch_template.id
    version = "$Latest"
  }

}
