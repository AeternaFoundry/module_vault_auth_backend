output "auth_backends_id" {
  description = "Map of id values across all auth_backends, keyed the same as var.auth_backends except keys with no id are omitted"
  value       = { for k, v in vault_auth_backend.auth_backends : k => v.id if v.id != null && length(v.id) > 0 }
}
output "auth_backends_accessor" {
  description = "Map of accessor values across all auth_backends, keyed the same as var.auth_backends except keys with no accessor are omitted"
  value       = { for k, v in vault_auth_backend.auth_backends : k => v.accessor if v.accessor != null && length(v.accessor) > 0 }
}
output "auth_backends_description" {
  description = "Map of description values across all auth_backends, keyed the same as var.auth_backends except keys with no description are omitted"
  value       = { for k, v in vault_auth_backend.auth_backends : k => v.description if v.description != null && length(v.description) > 0 }
}
output "auth_backends_disable_remount" {
  description = "Map of disable_remount values across all auth_backends, keyed the same as var.auth_backends except keys with no disable_remount are omitted"
  value       = { for k, v in vault_auth_backend.auth_backends : k => v.disable_remount if v.disable_remount != null }
}
output "auth_backends_identity_token_key" {
  description = "Map of identity_token_key values across all auth_backends, keyed the same as var.auth_backends except keys with no identity_token_key are omitted"
  value       = { for k, v in vault_auth_backend.auth_backends : k => v.identity_token_key if v.identity_token_key != null && length(v.identity_token_key) > 0 }
}
output "auth_backends_local" {
  description = "Map of local values across all auth_backends, keyed the same as var.auth_backends except keys with no local are omitted"
  value       = { for k, v in vault_auth_backend.auth_backends : k => v.local if v.local != null }
}
output "auth_backends_namespace" {
  description = "Map of namespace values across all auth_backends, keyed the same as var.auth_backends except keys with no namespace are omitted"
  value       = { for k, v in vault_auth_backend.auth_backends : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "auth_backends_path" {
  description = "Map of path values across all auth_backends, keyed the same as var.auth_backends except keys with no path are omitted"
  value       = { for k, v in vault_auth_backend.auth_backends : k => v.path if v.path != null && length(v.path) > 0 }
}
output "auth_backends_tune" {
  description = "Map of tune values across all auth_backends, keyed the same as var.auth_backends except keys with no tune are omitted"
  value       = { for k, v in vault_auth_backend.auth_backends : k => v.tune if v.tune != null && length(v.tune) > 0 }
}
output "auth_backends_type" {
  description = "Map of type values across all auth_backends, keyed the same as var.auth_backends except keys with no type are omitted"
  value       = { for k, v in vault_auth_backend.auth_backends : k => v.type if v.type != null && length(v.type) > 0 }
}

