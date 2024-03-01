variable "region" {
  type    = string
  default = "us-east-1"
}

variable "tags" {
  type = map(string)
  default = {
    "Teams"         = "phase5"
    "environment"   = "dev"
    "project"       = "revive"
    "createBy"      = "Terraform"
    "cloudProvider" = "aws"
    "resource"      = "jenkins-master"
  }
}

variable "instance_ami" {
  type = string
}

variable "key_name" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "volume_size" {
  type = string
}


variable "tenancy" {
  type = bool
}

variable "api_termination" {
  type = bool
}

variable "pub_ip" {
  type = bool
}

variable "subnet_id" {
  type = list(string)
}

variable "jenkins-role-name" {
  type    = string
  default = "jenkins-master-role"
}

variable "vpc_id" {
  type = string
}

