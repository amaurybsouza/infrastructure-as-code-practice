provider "aws" {
    region = "us-east-1"
    shared_credentials_file = "/home/amaury/.aws/credentials"
    profile = "boblee"
}

resource "aws_instance" "new-instance2" {
  ami = "ami-00a208c7cdba991ea"
  instance_type = "t2.micro"
  count = 3
}

