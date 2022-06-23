# create security group for ELB
resource "aws_security_group" "demosg1" {
  name        = "Demo security group"
  description = "Demo module"
  vpc_id      = aws_vpc.demovpc.id
  # inbound rule
  # allow HTTP acces from anywhere
  ingress {
    from_port  = 80
    to_port    = 80
    protocol   = "tcp"
    cidr_block = ["0.0.0.0/0"]
  }
  # allow SSH from anywhere
  ingress {
    from_port  = 22
    to_port    = 22
    protocol   = "tcp"
    cidr_block = ["0.0.0.0/0"]
  }
  # outbound rules
  egress {
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = ["0.0.0.0/0"]
  }
}
