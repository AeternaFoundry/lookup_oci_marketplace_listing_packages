data "oci_marketplace_listing_packages" "marketplace_listing_packages_lookup" {
  for_each = var.marketplace_listing_packages_lookup

  listing_id      = each.value.listing_id
  compartment_id  = each.value.compartment_id
  package_type    = each.value.package_type
  package_version = each.value.package_version

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

