resource "aws_eip" "revive_eip" {
  count = length(var.availability_zone)
  vpc   = true

  tags = merge(var.tags, {
    Name = format("revive-%s-eip-${count.index + 1}", var.tags["id"])
    }
  )

  associate_with_private_ip = "10.0.0.12"
  depends_on                = [aws_internet_gateway.revive_igw]
}