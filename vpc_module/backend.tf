terraform {
  backend "s3" {
    bucket = "s6-revive-terraform"
    #dynamodb_table = ""
    key    = "vpc"
    region = "us-east-1"
  }
}