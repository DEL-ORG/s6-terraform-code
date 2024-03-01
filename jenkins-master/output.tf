output "jenkins_endpoint" {
  value = "http://${aws_instance.revive_jenkins.public_ip}:8080"
}