#라우팅테이블 설정
resource "aws_route_table_association" "sm-igas_puba" {
  subnet_id = aws_subnet.sm_puba.id
  route_table_id = aws_route_table.sm_rt.id
}

resource "aws_route_table_association" "sm-igas_pubc" {
  subnet_id = aws_subnet.sm_pubc.id
  route_table_id = aws_route_table.sm_rt.id
}