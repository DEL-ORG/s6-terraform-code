resource "aws_nat_gateway" "a1ngel_nat_gateway" {
  count             = var.tags["environment"] == "production" ? length(var.AZ) : var.num_nat
  allocation_id     = element(aws_eip.a1angel_eip.*.id, count.index)
  connectivity_type = "public"
  subnet_id         = element(aws_subnet.a1angel_subnet_pub.*.id, count.index)

  tags = merge(var.tags, {
    Name = format("a1angel-%s-nat-gateway-${count.index + 1}", var.tags["id"])
    }
  )
  depends_on = [aws_internet_gateway.a1angel_igw]
}

