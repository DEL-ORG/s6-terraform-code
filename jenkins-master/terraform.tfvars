region = "us-east-1"

subnet_id = [
   "subnet-0347ec60a9442c2ea"
]

vpc_id            = "vpc-04081456ed925b05c"
#key_name          = "jenkins-key"
instance_type     = "t2.medium"
volume_size       = "50"
jenkins-role-name = "jenkins-master-role"


tags = {
  "Teams"         = "phase5"
  "environment"   = "dev"
  "project"       = "revive"
  "createBy"      = "Terraform"
  "cloudProvider" = "aws"
  "resource"      = "jenkins-master"
}