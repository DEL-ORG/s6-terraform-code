resource "aws_subnet" "a1angel_subnet_pub" {
  count             = length(var.AZ)
  vpc_id            = aws_vpc.a1angel_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, count.index + length(var.AZ))
  availability_zone = element(var.AZ, count.index)
  //cidrsubnet(prefix, newbits, netnum)

  tags = merge(var.tags, {
    Name = format("a1angel-%s-pub_subnet-${count.index + 1}", var.tags["id"])
    }
  )
}
resource "aws_subnet" "a1angel_subnet_private" {
  count             = length(var.AZ)
  vpc_id            = aws_vpc.a1angel_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, count.index + length(var.AZ))
  availability_zone = element(var.AZ, count.index)

  tags = merge(var.tags, {
    Name = format("a1angel-%s-pri_subnet-${count.index + 1}", var.tags["id"])
    }
  )
}

