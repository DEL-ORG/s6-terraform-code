terraform {
  backend "s3" {
    bucket = "terraform-angel"
    #dynamodb_table = var.backend["dynamodb_table"]
    key    = "DevOps/ecr"
    region = "us-east-1"
  }
}