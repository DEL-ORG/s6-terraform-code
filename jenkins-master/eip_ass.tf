resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.revive_jenkins.id
  allocation_id = var.eip_asso
}