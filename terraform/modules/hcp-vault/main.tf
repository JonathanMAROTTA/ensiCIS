terraform {
  required_providers {
    hcp = {
      source = "hashicorp/hcp"
      version = "0.91.0"
    }
  }
}

data "hcp_vault_secrets_app" "juice_shop" {
  app_name = "sample-app"
}
