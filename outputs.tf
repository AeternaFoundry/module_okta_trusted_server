output "trusted_servers_id" {
  description = "Map of id values across all trusted_servers, keyed the same as var.trusted_servers"
  value       = { for k, v in okta_trusted_server.trusted_servers : k => v.id }
}
output "trusted_servers_auth_server_id" {
  description = "Map of auth_server_id values across all trusted_servers, keyed the same as var.trusted_servers"
  value       = { for k, v in okta_trusted_server.trusted_servers : k => v.auth_server_id }
}
output "trusted_servers_trusted" {
  description = "Map of trusted values across all trusted_servers, keyed the same as var.trusted_servers"
  value       = { for k, v in okta_trusted_server.trusted_servers : k => v.trusted }
}

