#Configure AWS provider
provider "aws" {
  region = "us-east-1"
}

#Create AWS Bucket
resource "aws_s3_bucket" "bucket-medium-teste" {
  bucket = "projeto-terraform-medium"
  acl = "private"

  tags = {
      Name = "projeto-terraform-medium"
      Environment = "Dev"
  }
}

