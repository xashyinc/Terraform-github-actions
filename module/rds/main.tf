resource "aws_db_subnet_group" "db-subnet-group" {
  name = var.name
  subnet_ids = var.private-subnets-ids
  
}
resource "aws_db_instance" "example" {
  identifier            = var.identifier
  allocated_storage     = var.allocated-storage
  engine                = var.engine
  engine_version        = var.engine-version
  instance_class        = var.instance-class
  name                  = "${var.project-name}rds"
  username              = var.username
  password              = var.password
  parameter_group_name  = var.parameter-group-name
  publicly_accessible   = false
  skip_final_snapshot   = true
  db_subnet_group_name = aws_db_subnet_group.db-subnet-group.name
  vpc_security_group_ids = [var.private-sg-id]
}