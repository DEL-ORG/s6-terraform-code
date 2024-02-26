terraform {
  backend "s3" {
    bucket = "s6-revive-terraform"
    #dynamodb_table = ""
    key     = "ecr"
    region  = "us-east-1"
    profile = "student"
  }
}