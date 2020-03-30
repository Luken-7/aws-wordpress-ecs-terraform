# ECS Container Instances

resource "aws_instance" "ecs-instance01" {
    ami                         = lookup(var.amis, var.region)
    instance_type               = var.instance_type
    subnet_id                   = aws_subnet.wp-public-subnet.id
    associate_public_ip_address = true
    iam_instance_profile        = var.ecs_instance_role
    security_groups             = [aws_security_group.wp-ecs-sg.id]
    user_data                   = "#!/bin/bash\necho ECS_CLUSTER=${aws_ecs_cluster.default.name} > /etc/ecs/ecs.config"
    tags = {
      Name = "ecs-instance-01"
    }
}

resource "aws_instance" "ecs-instance02" {
    ami                         = lookup(var.amis, var.region)
    instance_type               = var.instance_type
    subnet_id                   = aws_subnet.wp-public-subnet.id
    associate_public_ip_address = true
    iam_instance_profile        = var.ecs_instance_role
    security_groups             = [aws_security_group.wp-ecs-sg.id]
    user_data                   = "#!/bin/bash\necho ECS_CLUSTER=${aws_ecs_cluster.default.name} > /etc/ecs/ecs.config"
    tags = {
      Name = "ecs-instance-02"
    }
}
