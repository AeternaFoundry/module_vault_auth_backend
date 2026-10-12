variable "auth_backends" {
  description = <<EOT
Map of auth_backends, attributes below
Required:
    - type
Optional:
    - description
    - disable_remount
    - identity_token_key
    - local
    - namespace
    - path
    - tune (block):
        - allowed_response_headers (optional)
        - audit_non_hmac_request_keys (optional)
        - audit_non_hmac_response_keys (optional)
        - default_lease_ttl (optional)
        - listing_visibility (optional)
        - max_lease_ttl (optional)
        - passthrough_request_headers (optional)
        - token_type (optional)
EOT

  type = map(object({
    type               = string
    description        = optional(string)
    disable_remount    = optional(bool)
    identity_token_key = optional(string)
    local              = optional(bool)
    namespace          = optional(string)
    path               = optional(string)
    tune = optional(list(object({
      allowed_response_headers     = optional(list(string))
      audit_non_hmac_request_keys  = optional(list(string))
      audit_non_hmac_response_keys = optional(list(string))
      default_lease_ttl            = optional(string)
      listing_visibility           = optional(string)
      max_lease_ttl                = optional(string)
      passthrough_request_headers  = optional(list(string))
      token_type                   = optional(string)
    })))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

