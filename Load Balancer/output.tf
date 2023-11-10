output "lb_dns_name" {
    description = "DNS name of the load balancer"
    value = "${aws_alb.Application-Load-Balancer.dns_name}"
}