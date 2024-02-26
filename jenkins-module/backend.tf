terraform {
  backend "s3" {
    bucket = "s6-db-backup"
    key    = "terraform/backend"
    region = "us-east-1"
    # versioning {
    #   enabled = true
    # }
  }
}