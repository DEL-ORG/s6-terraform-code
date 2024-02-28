resource "aws_internet_gateway" "a1angel_igw" {
  vpc_id = aws_vpc.a1angel_vpc.id

  tags = merge(var.tags, {
    Name = format("a1angel-%s-igw", var.tags["id"])
    }
  )
}