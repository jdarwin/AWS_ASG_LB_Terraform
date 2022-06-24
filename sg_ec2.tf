# create SG for ELB
resource "aws_security_group" "demosg1" {
  name        = "Demo SG"
  description = "Demo module"
  vpc_id      = aws_vpc.demovpc.id
  # Inbound rules
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow http from anywhere"
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow http from anywhere"
    from_port   = 443
    protocol    = "tcp"
    to_port     = 443
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # outbound rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
