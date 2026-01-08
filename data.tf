data "aws_vpc" "example" {
  id = "vpc-07eede624774fec02"

}

resource "aws_security_group" "allow_tls" {
  name        = "db_allow_bpfa_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = data.aws_vpc.example.id

  tags = {
    Name = "db_allow_bpfa_tls"
  }
}