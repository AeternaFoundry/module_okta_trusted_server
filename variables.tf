variable "trusted_servers" {
  description = <<EOT
Map of trusted_servers, attributes below
Required:
    - auth_server_id
    - trusted
EOT

  type = map(object({
    auth_server_id = string
    trusted        = set(string)
  }))
}

