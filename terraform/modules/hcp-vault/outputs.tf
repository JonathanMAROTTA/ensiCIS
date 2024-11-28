output "aws_access_key" {
  value = data.hcp_vault_secrets_app.juice_shop.secrets.aws_access_key
  sensitive = true
}

output "aws_secret_key" {
  value = data.hcp_vault_secrets_app.juice_shop.secrets.aws_secret_key
  sensitive = true
}

output "aws_token" {
  value = data.hcp_vault_secrets_app.juice_shop.secrets.aws_token
  sensitive = true
}
