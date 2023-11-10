# Auto Scaling Group for Web Server

resource "aws_launch_template" "auto-Scaling-group-web" {
    name_prefix = "auto-scaling-group"
    image_id = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    
    network_interfaces {
        subnet_id = var.subnet_id
        security_groups = [var.Web_tier_SG]
    }
}

resource "aws_autoscaling_group" "asg-1" {
    availability_zones = ["us-east-1a"]
    desired_capacity = var.desired_capacity
    max_size = var.max_size
    min_size = var.min_size
    launch_template {
        id = aws_launch_template.auto-Scaling-group-web.id
        version = "$Latest"
    }
}

# Auto Scaling Group for Application Server

resource "aws_launch_template" "auto-scaling-App" {
    name_prefix = "App-auto-scaling-group"
    image_id = var.ami
    instance_type = var.instance_type
    key_name = var.key_name

    network_interfaces {
        subnet_id = var.App_subnet_id
        security_groups = [var.SSH_SG_Bastion]
    }
}

resource "aws_autoscaling_group" "asg-2" {
    availability_zones = ["us-east-1a"]
    desired_capacity = var.desired_capacity
    max_size = var.max_size
    min_size = var.min_size
    launch_template {
        id = aws_launch_template.auto-scaling-App.id
        version = "$Latest"
    }
}
