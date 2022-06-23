resource "aws_autoscaling_group" "web" {
  name              = "${aws_launch_configuration.web.name}-asg"
  min_size          = 1
  desired_capacity  = 1
  max_size          = 2
  health_check_type = "ELB"
  load_balancers = [
    aws_elb.web_elb.id
  ]
  launch_configuration = [
    "GroupMinSize",
    "GroupMaxSize",
    "GroupDesiredCapacity",
    "GroupInServiceInstances",
    "GroupTotalInstances"
  ]
  metrics_granularity = "1Minute"
  vpc_zone_identifier = [
    "${aws_subnet.demosubnet.id}",
    "${aws_subnet.demosubnet1.id}"
  ]
  lifecycle {
    create_before_destroy = true
  }
  tag {
    key                 = "Name"
    value               = "web"
    propogate_at_launch = true
  }
}
