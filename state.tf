terraform {
  backend "s3" {}
}

provider "aws" {}

# provider "vault" {
#   address         = "https://vault.clouding-app.shop:8200/"
#   token           = var.token
#   skip_tls_verify = true
# }