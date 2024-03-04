output "jenkins_endpoint" {
  value = "http://${aws_lb.jenkins_lb.dns_name}:8080"
}