output "trusted_servers_id" {
  description = "Map of id values across all trusted_servers, keyed the same as var.trusted_servers except keys with no id are omitted"
  value       = { for k, v in okta_trusted_server.trusted_servers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "trusted_servers_auth_server_id" {
  description = "Map of auth_server_id values across all trusted_servers, keyed the same as var.trusted_servers except keys with no auth_server_id are omitted"
  value       = { for k, v in okta_trusted_server.trusted_servers : k => v.auth_server_id if v.auth_server_id != null && length(v.auth_server_id) > 0 }
}
output "trusted_servers_trusted" {
  description = "Map of trusted values across all trusted_servers, keyed the same as var.trusted_servers except keys with no trusted are omitted"
  value       = { for k, v in okta_trusted_server.trusted_servers : k => v.trusted if v.trusted != null && length(v.trusted) > 0 }
}

