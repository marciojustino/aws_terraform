# Terraform IaC for AWS
Projeto de IaC em terraform para aws

# Requisitos
- [Terraform CLI](https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started)
- [AWS CLI](https://aws.amazon.com/pt/cli/)

# Configurando o Terraform
## Definindo variáveis de ambiente para o terraform
Recuperar as credenciais da conta AWS:

| Access Key ID | Secret Access Key |
|---------------|-------------------|
| XXXXXXXXXXXXX | XXXXXXXXXXXXXXXXX |

Definir as variaveis de ambiente, pelo terminal.

Para usar suas credenciais IAM para autenticar o provider da AWS do Terraform, defina as seguintes variaveis de ambiente:
```bash
export AWS_ACCESS_KEY_ID=
```

Agora, defina seu secret key:
```bash
export AWS_SECRET_ACCESS_KEY=
```
