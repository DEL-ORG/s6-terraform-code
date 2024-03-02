terraform {
  backend "s3" {
    bucket = "s6-revive-terraform"
    #dynamodb_table = ""
    key    = "vpc/terraform.tf"
    region = "us-east-1"
  }
}