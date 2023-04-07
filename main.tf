resource "aws_rds_cluster" "main" {
  cluster_identifier      = "${var.env}-rds"
  engine                  = var.engine
  engine_version          = var.engine_version
  database_name           = var.database_name
  master_username         = data.aws_ssm_parameter.user.value
  master_password         = data.aws_ssm_parameter.pass.value
  backup_retention_period = var.backup_retention_period
  preferred_backup_window = var.preferred_backup_window
  db_subnet_group_name    = aws_db_subnet_group.main.name
  skip_final_snapshot     = true
  vpc_security_group_ids  = [aws_security_group.main.id]

  tags = merge(
    var.tags,
    { Name = "${var.env}-rds" }
  )

}


resource "aws_db_subnet_group" "main" {
  name       = "${var.env}-rds"
  subnet_ids = var.subnet_ids
  tags = merge(
    var.tags,
    { Name = "${var.env}-subnet_ids" }
  )
}