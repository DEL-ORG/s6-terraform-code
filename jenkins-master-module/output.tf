output "jenkins_endpoint" {
  value = "http://${aws_lb.jenkins_lb.dns_name}"
}

//output "pass" {
//  value = null_resource.jenkins_pass.id
//}