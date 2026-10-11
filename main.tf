resource "okta_trusted_server" "trusted_servers" {
  for_each = var.trusted_servers

  auth_server_id = each.value.auth_server_id
  trusted        = each.value.trusted
}

