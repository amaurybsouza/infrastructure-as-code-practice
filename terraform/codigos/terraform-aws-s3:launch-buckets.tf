# Criação do provider AWS
provider "aws" {
    region = "us-east-1"
    
}
# Create a AWS S3 Bucket
resource "aws_s3_bucket" "armazenamento" {
    bucket = "my-bucket-teste-aws"
    acl = "private"

    tags = {
        Name = "My bucket"
        Environment = "Dev"
    }    
}

resource "aws" "mamau" {
}

