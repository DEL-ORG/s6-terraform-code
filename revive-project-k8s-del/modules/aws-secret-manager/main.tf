
resource "aws_secretsmanager_secret" "revive" {
  for_each                = toset(var.aws-secret-string)
  name                    = "${each.value}"
  recovery_window_in_days = 0 # Disable retention policy
  tags                    = var.tags
}



# resource "aws_secretsmanager_secret_version" "revive" {
#   secret_id               = aws_secretsmanager_secret.revive.id
#   # for_each                = toset(var.secret_string)
#   # secret_string           = "${each.value}"
#   secret_string           = jsonencode(var.secret_string)
# }


# resource "aws_secretsmanager_secret_rotation" "revive" {
#   secret_id           = aws_secretsmanager_secret.revive[each.key].id
#   rotation_lambda_arn = aws_lambda_function.example.arn

#   rotation_rules {
#     automatically_after_days = 30
#   }
# }