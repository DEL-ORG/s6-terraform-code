# Creation of DNS Alias Record for our subdomain name pointint to our ELB endpoint

provider "aws" {
  region = "us-east-1"
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

terraform {
  backend "s3" {
    bucket         = "s6-revive-terraform"
    dynamodb_table = "revive-k8s-tfstate-locking"
    key            = "k8s/dev/controlplane/terraform.tf"
    region         = "us-east-1"
  }
}


data "aws_lb" "revive" {
  name = "revive-alb"
}

# data "aws_lb_hosted_zone_id" "main"

data "aws_route53_zone" "hostedzone" {
    name   = "reviceapp.com"
    private_zone = false
}

resource "aws_route53_record" "revive" {
  zone_id = data.aws_route53_zone.hostedzone.zone_id
  name    = "www.reviceapp.com"
  type    = "A"

  alias {
    
    name                   = aws_lb.revive.dns_name
    zone_id                = data.aws_lb.revive.zone_id
    evaluate_target_health = true
  }
}