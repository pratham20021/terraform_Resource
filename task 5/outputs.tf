output "rds_endpoint" {
  value = aws_db_instance.mysql.endpoint
}

output "database_name" {
  value = aws_db_instance.mysql.db_name
}