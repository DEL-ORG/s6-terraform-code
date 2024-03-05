data "aws_key_pair" "jen_key" {
  key_name           = "jenkins-key"
  include_public_key = true

  filter {
    name   = "tag:env"
    values = ["dev"]
  }
}

resource "null_resource" "jenkins_pass" {
  connection {
    user = "ubuntu"
    //key = data.aws_key_pair.jen_key
    host = data.aws_instance.jenkins.private_ip
  }
  provisioner "remote-exec" {
    inline = [
      "sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
    ]
    
  }
}

data "aws_instance" "jenkins" {
  filter {
    name   = "image-id"
    values = [data.aws_ami.jenkins_ami.id]
  }
  filter {
    name   = "tag:Name"
    values = ["1300-revive-jenkins"]
  }
}

