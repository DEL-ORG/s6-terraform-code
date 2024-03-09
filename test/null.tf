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
//
//resource "null_resource" "jenkins_pass" {
//     
//     connection {
//       type =  "ssh"
//       user = "ubuntu"
//       host = "data.aws_instance.jenkins.private_ip"
//       private_key = "../../../test/jenkins-key.pem"
//     }
//     provisioner "local-exec" {
//          command = "sudo cat /var/lib/jenkins/secrets/initialAdminPassword  >> pass.txt"
//          }
//       inline = [
//         "sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
//       ]
//   
//    }
//}