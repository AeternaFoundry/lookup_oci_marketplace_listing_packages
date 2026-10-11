variable "marketplace_listing_packages_lookup" {
  description = <<EOT
Map of marketplace_listing_packages_lookup, attributes below
Required:
    - listing_id
Optional:
    - compartment_id
    - package_type
    - package_version
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    listing_id      = string
    compartment_id  = optional(string)
    package_type    = optional(string)
    package_version = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.marketplace_listing_packages_lookup : (
        v.package_type == null || (contains([for v in ["IMAGE", "ORCHESTRATION"] : lower(v)], lower(v.package_type)))
      )
    ])
    error_message = "must be one of: \"IMAGE\", \"ORCHESTRATION\""
  }
}

