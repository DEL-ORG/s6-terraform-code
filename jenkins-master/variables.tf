variable "region" {
  type    = string
  default = "us-east-1"
}

variable "eip_asso" {
  type = string
}

variable "tags" {
  type = map(string)
  default = {
    "id"            = "1300"
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

variable "instance_type" {
  type = string
}

variable "volume_size" {
  type = string
}


variable "tenancy" {
  type = string
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


variable "vpc_id" {
  type = string
}

variable "sg" {
  type = string
}

