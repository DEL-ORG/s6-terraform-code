resource "aws_route53_zone" "revive_zone" {
  name = "dev.example.com"

  tags = {
    Environment = "dev"
  }
}