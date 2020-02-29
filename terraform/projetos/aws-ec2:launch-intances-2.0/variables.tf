variable "key_path" {
  description = "Key path for SSHing into EC2"
  default  = "./ssh/projeto-terraform-boblee2.pem"
}

variable "key_name" {
  description = "Key name for SSHing into EC2"
  default = "projeto-terraform-boblee2"
}

