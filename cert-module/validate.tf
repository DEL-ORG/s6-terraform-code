//resource "aws_acm_certificate" "example" {
//  domain_name       = "example.com"
//  validation_method = "DNS"
//}
//
//data "aws_route53_zone" "example" {
//  name         = "example.com"
//  private_zone = false
//}



resource "aws_acm_certificate_validation" "revive" {
  certificate_arn         = aws_acm_certificate.example.arn
  validation_record_fqdns = [for record in aws_route53_record.example : record.fqdn]
}

resource "aws_lb_listener" "example" {
  # ... other configuration ...

  certificate_arn = aws_acm_certificate_validation.example.certificate_arn
}