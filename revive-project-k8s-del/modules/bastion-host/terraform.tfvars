aws_region                    = "us-east-1"
ec2_instance_ami              = ""
ec2_instance_type             = "t2.micro"
sg_name                       = "bastion-sg"
instance_name                 = "bastion-host"
# vpc_id                        = ""
root_volume_size              = 10
instance_count                = 1
enable_termination_protection = false
key_name         = "revive_bastion_keypair"
allowed_ports = [
  22,
  80,
  8080
]
tags = {
  "id"             = "2024"
    "owner"          = "Devops Easy Learning"
    "teams"          = "Phase-10-1"
    "environment"    = "dev"
    "project"        = "revive"
    "create_by"      = "EK-TECH Solutions"
    "cloud_provider" = "aws"
}
