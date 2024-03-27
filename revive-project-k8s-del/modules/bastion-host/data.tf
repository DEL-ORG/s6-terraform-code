data "aws_subnet" "sub_pub1" {
  filter {
    name   = "tag:Name"
    values = ["revive-1300-pub_subnet-1"]
  }
}

data "aws_vpc" "revive_vpc" {
  filter {
    name   = "tag:Name"
    values = ["revive-1300-vpc"]
  }
}

data "aws_ami" "k8s-bastion_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

