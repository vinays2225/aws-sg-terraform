resource "aws_security_group" "main" {
  
  name        = "${local.common_name}-${var.sg_name}"
  description = "Allow traffic from ${var.sg_name}"
  vpc_id      = var.vpc_id

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }

  tags = merge(
    var.sg-tags,
    local.common_tags,
    {
        Name="${local.common_name}-${var.sg_name}"
    }
  )
}