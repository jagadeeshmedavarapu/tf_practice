resource "aws_db_subnet_group" "db_subnet_group" {
  name = "ntier-db-subnet-group"
  subnet_ids = data.aws_subnets.db_subnets.ids
}

