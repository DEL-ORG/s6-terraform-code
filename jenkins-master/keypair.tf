data "aws_key_pair" "jen_key" {
  key_name           = "jenkins-key"
  include_public_key = true

  filter {
    name   = "tag:env"
    values = ["dev"]
  }
}

//resource "terraform_data" "jenkins_pass" {
//  triggers_replace = aws_instance.revive_jenkins.id
//  connection {
//    user = "ubuntu"
//    key = data.aws_key_pair.jen_key
//    host = data.aws_instance.jenkins.public_ip
//  }
//  provisioner "remote-exec" {
//    command = "sudo /var/lib/jenkins/secrets/initialAdminPassword",
//    
//  }
//}

//data "aws_instance" "jenkins" {
//  filter {
//    name   = "image-id"
//    values = [data.aws_ami.jenkins_ami.id]
//  }
//  filter {
//    name   = "tag:Name"
//    values = ["1300-revive-jenkins"]
//  }
//}

