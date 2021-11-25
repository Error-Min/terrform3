#natgw에쓸(할당할) eip
resource "aws_eip" "sdkim_naw_ip" {
  vpc = true
}


resource "aws_nat_gateway" "sm-ngw" {
  allocation_id = aws_eip.sdkim_naw_ip.id
  subnet_id = aws_subnet.sm_puba.id
}