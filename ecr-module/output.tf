output "repos" {
  value       = aws_ecr_repository.s6_ecr.repository_url*
}
