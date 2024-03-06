data "aws_subnet" "sub_pub" {
  filter {
    name   = "tag:Name"
    values = ["revive-1300-pub_subnet-1"]
  }
}