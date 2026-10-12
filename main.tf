resource "vault_auth_backend" "auth_backends" {
  for_each = var.auth_backends

  type               = each.value.type
  description        = each.value.description
  disable_remount    = each.value.disable_remount
  identity_token_key = each.value.identity_token_key
  local              = each.value.local
  namespace          = each.value.namespace
  path               = each.value.path

  dynamic "tune" {
    for_each = each.value.tune != null ? each.value.tune : []
    content {
      allowed_response_headers     = tune.value.allowed_response_headers
      audit_non_hmac_request_keys  = tune.value.audit_non_hmac_request_keys
      audit_non_hmac_response_keys = tune.value.audit_non_hmac_response_keys
      default_lease_ttl            = tune.value.default_lease_ttl
      listing_visibility           = tune.value.listing_visibility
      max_lease_ttl                = tune.value.max_lease_ttl
      passthrough_request_headers  = tune.value.passthrough_request_headers
      token_type                   = tune.value.token_type
    }
  }
}

