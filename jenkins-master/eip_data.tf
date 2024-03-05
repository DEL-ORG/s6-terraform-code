data "aws_eip" "jenkins_eip" {
  filter {
    name   = "tag:Name"
    values = ["revive-1300-eip-1"]
  }
  tags = {
    "id"             = "1300"
    "environment"    = "dev"
  }
}

//data "aws_eip" "eip_allocation_id" {
//  for_each = toset(data.aws_eips)
//  id = data.aws_eips.jenkins_eip.id[2]
//}