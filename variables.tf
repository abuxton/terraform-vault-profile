# vault access token
variable "token" {
  type = "string"
  sensitive   = true
}

variable "enable_vault_secrets_kv" {
  type    = bool
  default = false
}

variable "enable_vault_secrets_tfc" {
  type    = bool
  default = false
}
