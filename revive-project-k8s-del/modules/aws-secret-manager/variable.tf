variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "aws-secret-string" {
  type = list(string)
  default = [
    "mysql-orders-password",
    "mysql-catalog-password",
    "redis-db-password",
    "DynamoDB-password"
  ]
}

variable "tags" {
  type = map(any)
  default = {
    "id"             = "2024"
    "owner"          = "Devops Easy Learning"
    "teams"          = "Phase-10-1"
    "environment"    = "dev"
    "project"        = "revive"
    "create_by"      = "EK-TECH Solutions"
    "cloud_provider" = "aws"
  }
}