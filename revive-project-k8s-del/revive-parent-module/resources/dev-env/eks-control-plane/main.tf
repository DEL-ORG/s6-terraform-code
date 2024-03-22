provider "aws" {
  region = local.region
}

terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }

    local = {
      source = "hashicorp/local"
      version = "2.5.1"
    }
  }
}

terraform {
  backend "s3" {
    bucket         = "s6-revive-terraform"
    dynamodb_table = "revive-k8s-tfstate-locking"
    key            = "k8s/dev/terraform.tf"
    region         = "us-east-1"
  }
}

locals {
  region                  = "us-east-1"
  cluster_name            = "dev-revive"
  eks_version             = 1.24
  endpoint_private_access = false
  endpoint_public_access  = true
}

module "eks-control-plane" {
  source                  = "../../../modules/eks-control-plane"
  region                  = local.region
  cluster_name            = local.cluster_name
  eks_version             = local.eks_version
  endpoint_private_access = local.endpoint_private_access
  endpoint_public_access  = local.endpoint_public_access
}
