# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "/home/amaury/.aws/credentials"
  profile = "boblee"
}
# Create a instance
resource "aws_instance" "example" {
  ami = "ami-046842448f9e74e7d"
  instance_type = "t2.micro"
# key_name = "${aws_key_pair.my_key.key_name}"
# security_groups = ["${aws_security_group.allow_ssh.name}"]
  key_name = "${var.key_name}"
}
# Create aws key pair for instance
#resource "aws_key_pair" "my_key" {
#  key_name = "my_key"
#  public_key = "${file("/home/amaury/.ssh/id_rsa.pub")}"
#}
# Create security group
resource "aws_security_group" "allow_ssh" {
  name = "allow_ssh"
  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
}
      egress {
          from_port = 0
          to_port = 0
          protocol = -1
          cidr_blocks = ["0.0.0.0/0"]
    }
}
# Create output
output "example_public_dns" {
    value = "${aws_instance.example.public_dns}"
}