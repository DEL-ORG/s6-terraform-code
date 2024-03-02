region = "us-east-1"

subnet_id = [
  "subnet-05d8c59da9a0d32e1",
  "subnet-0c3a9b1ba0595e421",
  "subnet-02571d97d8c91203d",
]

vpc_id          = "vpc-018937fc9f2e28f13"
eip_asso        = "eipalloc-052d583555f275383"
instance_ami    = "ami-06c3cc1dd06653a0d"
instance_type   = "t2.medium"
volume_size     = "30"
tenancy         = "default"
pub_ip          = true
api_termination = true


tags = {
  "id"            = "1300"
  "Teams"         = "phase5"
  "environment"   = "dev"
  "project"       = "revive"
  "createBy"      = "Terraform"
  "cloudProvider" = "aws"
  "resource"      = "jenkins-master"
}

sg = "sg-0590876c53b239b0b"