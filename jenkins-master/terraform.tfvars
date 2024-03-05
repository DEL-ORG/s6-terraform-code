region = "us-east-1"

subnet_id = [
  "subnet-0db59b4a77b492ae0",
  "subnet-0a024ee021665ae28",
  "subnet-099bd4da01d7d022c"
]

instance_ami    = "ami-022389d5ae885e6b9"
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

sg            = "sg-07a27199c2272a5c4"
allocation_id = "eipalloc-0c7a5e1315f5d8fc1"

internal = false

lb_type = "network"

lb_protection = false

desired_capacity = 1
max_size         = 2
min_size         = 1


