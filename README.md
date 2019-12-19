# Terraform

O objetivo desse projeto é mostrar alguns conceitos importantes e casos de uso do Terraform usando providers como, AWS, Docker, GCP, entre outros. Tudo isso, com resultados reais e ideias da comunidade afim de ajudar quem está começando.

Veja aqui um exemplo básico de utilização do Terraform para provisionamento de uma instância EC2 na AWS:

```
# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
  shared_credentials_file = "/home/absouza/.aws/credentials"
  profile = "awsterraform"
}

resource "aws_instance" "modeloteste" {
  ami = "ami-00a208c7cdba991ea"
  instance_type = "t2.micro"
}
```

Para ajudar no desenvolvimento, irei destacar alguns artigos que eu escrevi para acompanhar o processo de trabalho do Terraform.

#### Documentação oficial:

- [Download URL](https://www.terraform.io/downloads.html)
- [AWS Resources](https://www.terraform.io/docs/providers/aws/)
- [List of providers](https://www.terraform.io/docs/providers/index.html)


#### Artigos:

1) (IaC) Parte 1: Criando uma instância EC2 na AWS usando Terraform. Clique [aqui](https://medium.com/@amaurybsouza/terraform-e364f5d31570) para acessar.

#### Comandos principais:

Comandos         | Descrição do comando
-----------------|-----------------------------------------------
terraform init   |Initialize a Terraform working directory
terraform plan   |Generate and show an execution plan
terraform apply  |Builds or changes infrastructure
terraform destroy|Destroy Terraform-managed infrastructure
terraform show   |Inspect Terraform state or plan
terraform get    |Download and install modules for the configuration
                 
                 
# Terratest

O Terratest é uma biblioteca Go que facilita a criação de testes automatizados para o seu código de infraestrutura.

[Aqui](https://github.com/gruntwork-io/terratest) a documentação oficial.







