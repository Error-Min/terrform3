resource "aws_internet_gateway" "sm_ig" {
  vpc_id = aws_vpc.sm_vpc.id

  tags = {
      "Name" = "sm-ig"
  }
}