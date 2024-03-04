region = "us-east-1"

subnet_id = [
  
]

instance_ami  = "ami-06c3cc1dd06653a0d"
instance_type = "t2.medium"
volume_size   = "30"
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

sg = ""
allocation_id  = ""

internal = false

lb_type = "network"

lb_protection = false

desired_capacity = 1
max_size         = 2
min_size         = 1


