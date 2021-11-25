resource "aws_key_pair" "id_rsa" {
  key_name = "sm-key"
  public_key = file("../../.ssh/id_rsa.pub")

}