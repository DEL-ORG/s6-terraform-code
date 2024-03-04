output "vpc_id" {
  value     = aws_vpc.revive_vpc.id
  sensitive = true
}

output "subnet_id" {
  value = aws_subnet.revive_subnet_pub[*].id
}

output "eip_id" {
  value = aws_eip.revive_eip[*].id
}

output "eip" {
  value = aws_eip.revive_eip[*].public_ip
}
