terraform {
  required_version = "~> 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

locals {
  aws_region    = "us-east-1"
  instance_name = "Jenkins-Master"
  instance_params = {
    instance_ID            = "ami-06c3cc1dd06653a0d"
    instance_type          = "t2.micro"
    key_name               = "jenkins-master"
    vpc_security_group_ids = ["sg-077be8fe9fc492c47"]
    subnet_id              = "subnet-0c1af6029b2de52b2"
    volume_size            = "10"
  }
  tags = {
    "base-image"     = "ubuntu"
    "base-image-tag" = "20.04"
    "branch"         = "Phase-7"
    "environment"    = "dev"
    "project"        = "Revive"
    "create_by"      = "Terraform"
    "cloud_provider" = "aws"
  }

}
module "ec2" {
  source          = "../jenkins-module/"
  aws_region      = local.aws_region
  instance_name   = local.instance_name
  instance_params = local.instance_params
  tags            = local.tags

}