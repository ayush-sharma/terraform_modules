resource "aws_alb_listener" "alb_listener" {  
  load_balancer_arn = "${aws_alb.alb.arn}"  
  port              = "${var.alb_listener_port}"  
  protocol          = "${var.alb_listener_protocol}"
  ssl_policy        = "ELBSecurityPolicy-2015-05"
  certificate_arn   = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"
  
  default_action {    
    target_group_arn = "${aws_alb_target_group.alb_target.arn}"
    type             = "forward"  
  }
}