# DB subnet group (Aurora must span at least 2 AZs)
resource "aws_db_subnet_group" "aurora" {
  name        = "${var.project_name}-${var.environment}-aurora-subnet-group"
  subnet_ids  = aws_subnet.private[*].id
  description = "Subnet group for Aurora PostgreSQL cluster"

  tags = {
    Name = "${var.project_name}-${var.environment}-aurora-subnet-group"
  }
}

# Aurora PostgreSQL cluster
resource "aws_rds_cluster" "aurora" {
  cluster_identifier      = "${var.project_name}-${var.environment}-aurora"
  engine                  = "aurora-postgresql"
  engine_version          = "15.4"
  database_name           = var.db_name
  master_username         = var.db_username
  master_password         = var.db_password
  db_subnet_group_name    = aws_db_subnet_group.aurora.name
  vpc_security_group_ids  = [aws_security_group.aurora.id]
  skip_final_snapshot     = true
  deletion_protection     = false
  storage_encrypted       = true

  tags = {
    Name = "${var.project_name}-${var.environment}-aurora"
  }
}

# Single Aurora writer instance
resource "aws_rds_cluster_instance" "aurora_writer" {
  identifier           = "${var.project_name}-${var.environment}-aurora-writer"
  cluster_identifier   = aws_rds_cluster.aurora.id
  instance_class       = var.db_instance_class
  engine               = aws_rds_cluster.aurora.engine
  engine_version       = aws_rds_cluster.aurora.engine_version
  db_subnet_group_name = aws_db_subnet_group.aurora.name
  publicly_accessible  = false

  tags = {
    Name = "${var.project_name}-${var.environment}-aurora-writer"
  }
}
