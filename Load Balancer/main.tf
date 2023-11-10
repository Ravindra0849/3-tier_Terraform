# creating Application Load Balancer for web Server

resource "aws_alb" "Application-Load-Balancer" {
    name = "Web-load-balancer"
    internal = var.internal
    load_balancer_type = "application"
    security_groups = var.security_groups
    subnets = var.subnets
    enable_deletion_protection = var.enable_deletion_protection

    tags = {
        Name = "app-load-balancer"
    }
}

resource "aws_lb_target_group" "alb_target_group" {
    name = "appbalancertg"
    port = var.port
    protocol = "HTTP"
    vpc_id = var.vpc_id
}

resource "aws_lb_target_group_attachment" "web-attachment" {
    target_group_arn = aws_lb_target_group.alb_target_group.arn
    target_id = var.target_id
    port = var.port
}

resource "aws_lb_listener" "alb-http-listener" {
    load_balancer_arn = aws_alb.Application-Load-Balancer.arn
    port = var.port
    protocol = "HTTP"
    default_action {
        type = "redirect"

    redirect {
            port = var.port_HTTPS
            protocol = "HTTPS"
            status_code = "HTTP_301"
        }
    }
}