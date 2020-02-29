provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "mybucket-teste" {
  bucket = "my-bucket-teste-aws"
  acl = "private"

  tags = {
      Name = "My bucket-1.0"
      Environment = "Dev"
  }
}

