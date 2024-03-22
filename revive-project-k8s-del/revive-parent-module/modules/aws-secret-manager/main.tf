
resource "aws_secretsmanager_secret" "revive" {
  for_each                = toset(var.aws-secret-string)
  name                    = "${var.tags["environment"]}-${var.tags["project"]}-${each.value}"
  recovery_window_in_days = 0 # Disable retention policy
  tags                    = var.tags
}