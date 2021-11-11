resource "vault_namespace" "everyone" {
  path     = "everyone"
  provider = vault
}
provider vault {
  alias     = "everyone"
  namespace = vault_namespace.everyone.path
}
module "vault_static_secrets" {
  count    = var.enable_vault_secrets_kv == true ? 1 : 0
  source   = "git::https://github.com/devops-adeel/terraform-vault-secrets-kv.git?ref=v0.2.0"
  provider = vault.everyone
}
module "vault_tfc_secrets" {
  count    = var.enable_vault_secrets_tfc == true ? 1 : 0
   source      = "git::https://github.com/devops-adeel/terraform-vault-secrets-tfc.git?ref=v0.2.0"
   provider = vault.everyone

 }
