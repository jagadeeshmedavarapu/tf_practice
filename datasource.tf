data "aws_subnets" "db_subnets" {
    filter {
      name = "tag:Name"
      values = var.db_subnets
    }
    filter {
      name = "vpc-id"
      values = [aws_vpc.ntier.id]
    }
    depends_on = [
      aws_subnet.subnets
    ]
  
}