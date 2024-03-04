data "aws_eip" "jenkins_eip" {
  tags = {
    Name = "revive-1300-eip-1"
  }
}