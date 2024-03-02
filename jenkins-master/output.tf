output "jenkins_endpoint" {
  value = "http://${aws_eip_association.eip_assoc.public_ip}:8080"
}