provider "aws" {
  region = var.aws_region
}

## Terraform block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# terraform {
#   backend "s3" {
#     bucket         = "s6-revive-terraform"
#     dynamodb_table = "revive-k8s-tfstate-locking"
#     key            = "k8s/dev/bastion-host/terraform.tf"
#     region         = "us-east-1"
#   }
# }

