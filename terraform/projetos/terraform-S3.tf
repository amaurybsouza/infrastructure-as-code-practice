# Provider AWS
provider "aws" {
    region = "us-east-1"    
}

# Create AWS S3 Bucket
resource "aws_s3_bucket" "armazenamento" {
    bucket = "bucket-teste-aws-terraform"
    acl = "private"

    tags = {
        Name = "My bucket"
        Environment = "Dev"
    }
}
