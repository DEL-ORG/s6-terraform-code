data "aws_security_group" "revive_sg" {
  filter {
    name   = "tag:Name"
    values = ["revive-dev-sg"]
  }
  tags = {
    "id"            = "1300"
    "Teams"         = "phase5"
    "environment"   = "dev"
    "project"       = "revive"
    "createBy"      = "Terraform"
  }
}

