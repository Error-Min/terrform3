#natgw table
resource "aws_route_table" "sm_ngwrt" {
  vpc_id = aws_vpc.sm_vpc.id

  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_nat_gateway.sm-ngw.id
  }

  tags = {
    "Name" = "sm-ngwrt"
  }
}