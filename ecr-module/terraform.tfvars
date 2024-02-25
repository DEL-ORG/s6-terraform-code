region = "us-east-1"

tags = {
  "id"             = "1800"
  "owner"          = "teamwork"
  "teams"          = "phase5"
  "environment"    = "dev"
  "project"        = "revive"
  "create_by"      = "Terraform"
  "cloud_provider" = "aws"
}

backend = {
  bucket         = "s6-db-backup"
  #dynamodb_table = ""
  key            = "terraform/ecr"
  region         = "us-east-1"
}

scan_config = {
  "scan_type"      = "BASIC"
  "scan_frequency" = "SCAN_ON_PUSH"
  "filter"         = "*"
}

mutability = "MUTABLE"

scan_on_push = true

ecr_repo_name = [
  "ui",
  "carts",
  "catalog",
  "orders",
  "checkout"
]

