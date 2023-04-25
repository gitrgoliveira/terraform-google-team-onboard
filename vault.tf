resource "vault_namespace" "team_space" {
  path = var.team_name
}

resource "vault_gcp_secret_backend" "google" {
  namespace = vault_namespace.team_space.namespace
  path      = var.team_name
}
