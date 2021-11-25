resource "aws_key_pair" "id_rsa" {
  key_name = "sm-key"
  public_key = file("../../.ssh/id_rsa.pub")
  #public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCfK59B+58M6UNBjlcr9uVeubTACAidgyrO7tlfIaDF3ZCPQBGNRE78NKFb7VQlx7jfPshfGKcp2FnWbSrTmxiSSKHDkZ+W7vlqorqDDm3t/viIroPgnF2H7rnGyKowuKUkT+Th7+FBN8qxvv0mR4cBW7CDMBv1bdlp0WOednbKtR7cr6m5undx8DyjXofv7JPLEkGWdgnYfglGBfid/bNjXjWebaXjT6iC0OiRd9xCLZKXKfKlCjMB/nHDNZ9Jb59Tfqv6s+zMyijGLoZIqqZpg3o61OGa8Ixl5hhHTYWH4OUomfNKpFuph1etYJ1F/XdvDUecYxs+3BLsvaj/RsFhyof8jNNc66vyLPevJzexfRPBz+lQjP/m33ZMKgO40/hk7m8ih//eBQseH8kZPRRGP5tqXkYRX2GcQIZfTS3X739ry+1zzujvvd3eSJfqGtzcL58Mo0vxogLZWkoBbMP1WRXrTFZ2DwS2JbG8gOauM6f8d5BoNSg2GkjlnLebqYM="

}