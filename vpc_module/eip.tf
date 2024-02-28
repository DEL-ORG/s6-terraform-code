resource "aws_eip" "a1angel_eip" {
  count  = length(var.AZ)
  vpc = true

  tags = merge(var.tags, {
    Name = format("a1angel-%s-eip-${count.index + 1}", var.tags["id"])
    }
  )

  associate_with_private_ip = "10.0.0.12"
  depends_on                = [aws_internet_gateway.a1angel_igw]
}