data "aws_key_pair" "jen_key" {
  key_name           = "jenkins-key"
  include_public_key = true

  filter {
    name   = "tag:Name"
    values = ["jenkins-key"]
  }
}

resource "terraform_data" "jenkins_pass" {
  # Replacement of any instance of the cluster requires re-provisioning
  triggers_replace = aws_instance.revive_jenkins.id


  # Bootstrap script can run on any instance of the cluster
  # So we just choose the first in this case
  connection {
    host = aws_instance.revive_jenkins.public_ip
  }

  provisioner "remote-exec" {
    # Bootstrap script called with private_ip of each node in the cluster
    inline = [
      "sudo cat /var/lib/jenkins",
    ]
  }
}

