provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "mybucket-teste" {
  bucket = "my-bucket-teste-aws1"
  acl = "private"

  tags = {
      Name = "mybucket-teste"
      Environment = "Dev"
  }
}

