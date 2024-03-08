resource "aws_acm_certificate" "cert_revive" {
  domain_name       = "www.revive.com"
  validation_method = "DNS"

  tags = {
    Environment = "test"
  }

  lifecycle {
    create_before_destroy = true
  }
}