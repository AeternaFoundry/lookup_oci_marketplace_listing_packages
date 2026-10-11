output "marketplace_listing_packages_lookup_id" {
  description = "Map of id values across all marketplace_listing_packages_lookup, keyed the same as var.marketplace_listing_packages_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_marketplace_listing_packages.marketplace_listing_packages_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "marketplace_listing_packages_lookup_compartment_id" {
  description = "Map of compartment_id values across all marketplace_listing_packages_lookup, keyed the same as var.marketplace_listing_packages_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_marketplace_listing_packages.marketplace_listing_packages_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "marketplace_listing_packages_lookup_filter" {
  description = "Map of filter values across all marketplace_listing_packages_lookup, keyed the same as var.marketplace_listing_packages_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_marketplace_listing_packages.marketplace_listing_packages_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "marketplace_listing_packages_lookup_listing_id" {
  description = "Map of listing_id values across all marketplace_listing_packages_lookup, keyed the same as var.marketplace_listing_packages_lookup except keys with no listing_id are omitted"
  value       = { for k, v in data.oci_marketplace_listing_packages.marketplace_listing_packages_lookup : k => v.listing_id if v.listing_id != null && length(v.listing_id) > 0 }
}
output "marketplace_listing_packages_lookup_listing_packages" {
  description = "Map of listing_packages values across all marketplace_listing_packages_lookup, keyed the same as var.marketplace_listing_packages_lookup except keys with no listing_packages are omitted"
  value       = { for k, v in data.oci_marketplace_listing_packages.marketplace_listing_packages_lookup : k => v.listing_packages if v.listing_packages != null && length(v.listing_packages) > 0 }
}
output "marketplace_listing_packages_lookup_package_type" {
  description = "Map of package_type values across all marketplace_listing_packages_lookup, keyed the same as var.marketplace_listing_packages_lookup except keys with no package_type are omitted"
  value       = { for k, v in data.oci_marketplace_listing_packages.marketplace_listing_packages_lookup : k => v.package_type if v.package_type != null && length(v.package_type) > 0 }
}
output "marketplace_listing_packages_lookup_package_version" {
  description = "Map of package_version values across all marketplace_listing_packages_lookup, keyed the same as var.marketplace_listing_packages_lookup except keys with no package_version are omitted"
  value       = { for k, v in data.oci_marketplace_listing_packages.marketplace_listing_packages_lookup : k => v.package_version if v.package_version != null && length(v.package_version) > 0 }
}

