terraform {
  required_providers {
    vault = {
      source = "hashicorp/vault"
      version = "2.24.1"
    }
  }
}

provider "vault" {
  # Configuration options
}
https://registry.terraform.io/providers/hashicorp/vault/latest/docs#using-provider-aliases

