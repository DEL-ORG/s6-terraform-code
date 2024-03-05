data "aws_subnets" "subnets_pub" {
  //vpc_id = data.aws_vpc.revive_vpc.id
  //filter {
  //  name   = "vpc"
  //  values = ["revive-1300-vpc"]
  //}

  tags = {
    //vpc_id = data.aws_vpc.revive_vpc.id 
    tier = "public"
  }
}

//data "aws_subnet" "sub_pub" {
//  //for_each = toset(data.aws_subnets.subnets_pub.ids)
//  //id       = each.value
//  id = data.aws_subnets.subnets_pub.ids
//}
