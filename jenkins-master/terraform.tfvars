region = "us-east-1"

subnet_id = [
  "subnet-01a9ada62c5bffde4",
  "subnet-08322d895f564c32f",
  "subnet-03cb8d57f2c475664"
]

instance_ami    = "ami-06c3cc1dd06653a0d"
instance_type   = "t2.medium"
volume_size     = "30"
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

sg            = "sg-0be1bb8572716eea9"
allocation_id = "eipalloc-0c04380feaaa0e574"

internal = false

lb_type = "network"

lb_protection = false

desired_capacity = 1
max_size         = 2
min_size         = 1


