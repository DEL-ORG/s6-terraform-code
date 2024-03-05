data "aws_eip" "jenkins_eip" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.revive_vpc.id]
  }
}

data "aws_eip" "eip_allocation_id" {
  for_each = toset(data.aws_eips.jenkins_eip.ids)
  id = each.value
}