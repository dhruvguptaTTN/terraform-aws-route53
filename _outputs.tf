output "zone_ids" {
  description = "Map of Route53 zone names to their IDs"
  value       = module.zone.zone_ids
}

output "zone_names" {
  description = "Map of Route53 zone names to their names (fully qualified)"
  value       = module.zone.zone_names
}

output "record_fqdns" {
  description = "Map of record keys to the FQDNs of the created records"
  value       = module.records.record_fqdns
}
