data "aws_subnets" "subnets_pub" {
   filter {
    name   = "vpc-id"
    values = [data.aws_vpc.revive_vpc.id]
  }

  tags = {
    tier = "public"
  }
}

data "aws_subnet" "sub_pub" {
  for_each = toset(data.aws_subnets.subnets_pub.ids)
  id = each.value
}