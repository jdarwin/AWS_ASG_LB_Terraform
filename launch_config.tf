resource "aws_launch_configuration" "web" {
  name_prefix   = "web-"
  image_id      = "ami-098e42ae54c764c35" # Amazon EC2 AMI, check for your region before applying!
  instance_type = "t2.micro"
  key_name      = "ci-vprofile-key"
  security_groups = [
    aws_security_group.demosg.id
  ]
  associate_public_ip_address = true
  user_data                   = file("data.sh")
  lifecycle {
    create_before_destroy = true
  }
}
