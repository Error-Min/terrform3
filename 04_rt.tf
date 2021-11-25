resource "aws_route_table" "sm_rt" {
  vpc_id = aws_vpc.sm_vpc.id

  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.sm_ig.id
  }
  tags = {
    "Name" = "sm-rt"
  }
}