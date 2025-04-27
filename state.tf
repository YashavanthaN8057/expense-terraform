terraform {
  backend "s3" {}
}

provider "aws" {}

provider "vault" {
  address         = "https://vault.cloudcera.shop:8200/"
  token           = var.token
  skip_tls_verify = true
}