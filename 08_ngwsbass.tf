resource "aws_route_table_association" "sm_ngwass_pria" {
  subnet_id = aws_subnet.sm_pria.id
  route_table_id = aws_route_table.sm_ngwrt.id
}

resource "aws_route_table_association" "sm_ngwass_pric" {
  subnet_id = aws_subnet.sm_pric.id
  route_table_id = aws_route_table.sm_ngwrt.id
}

resource "aws_route_table_association" "sm_ngwass_pridba" {
  subnet_id = aws_subnet.sm_pridba.id
  route_table_id = aws_route_table.sm_ngwrt.id
}

resource "aws_route_table_association" "sm_ngwass_pridbc" {
  subnet_id = aws_subnet.sm_pridbc.id
  route_table_id = aws_route_table.sm_ngwrt.id
}