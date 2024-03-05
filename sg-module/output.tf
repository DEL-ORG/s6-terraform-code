output "sg_id" {
  value     = aws_security_group.revive_sg.id
  sensitive = true
}
