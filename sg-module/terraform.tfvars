region = "us-east-1"
vpc_id = "vpc-018937fc9f2e28f13"

tags = {
  "id"            = "1300"
  "Teams"         = "phase5"
  "environment"   = "dev"
  "project"       = "revive"
  "createBy"      = "Terraform"
  "cloudProvider" = "aws"
  "resource"      = "jenkins-master"
}

ports = [
  22,
  80,
  8080
]