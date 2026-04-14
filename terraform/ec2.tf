resource "aws_instance" "app" {
  ami                    = local.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public[0].id
  vpc_security_group_ids = [aws_security_group.ec2.id]
  key_name               = var.key_name != "" ? var.key_name : null

  # Install Node.js (for the Next.js portfolio app) on first boot
  user_data = <<-EOF
    #!/bin/bash
    set -e
    yum update -y
    curl -fsSL https://rpm.nodesource.com/setup_20.x | bash -
    yum install -y nodejs git
    npm install -g pm2
  EOF

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 20
    delete_on_termination = true
    encrypted             = true
  }

  tags = {
    Name = "${var.project_name}-${var.environment}-app"
  }
}
