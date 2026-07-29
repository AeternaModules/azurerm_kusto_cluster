output "kusto_clusters_id" {
  description = "Map of id values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kusto_clusters_allowed_fqdns" {
  description = "Map of allowed_fqdns values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.allowed_fqdns if v.allowed_fqdns != null && length(v.allowed_fqdns) > 0 }
}
output "kusto_clusters_allowed_ip_ranges" {
  description = "Map of allowed_ip_ranges values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.allowed_ip_ranges if v.allowed_ip_ranges != null && length(v.allowed_ip_ranges) > 0 }
}
output "kusto_clusters_auto_stop_enabled" {
  description = "Map of auto_stop_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.auto_stop_enabled if v.auto_stop_enabled != null }
}
output "kusto_clusters_data_ingestion_uri" {
  description = "Map of data_ingestion_uri values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.data_ingestion_uri if v.data_ingestion_uri != null && length(v.data_ingestion_uri) > 0 }
}
output "kusto_clusters_disk_encryption_enabled" {
  description = "Map of disk_encryption_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.disk_encryption_enabled if v.disk_encryption_enabled != null }
}
output "kusto_clusters_double_encryption_enabled" {
  description = "Map of double_encryption_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.double_encryption_enabled if v.double_encryption_enabled != null }
}
output "kusto_clusters_identity" {
  description = "Map of identity values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "kusto_clusters_language_extension" {
  description = "Map of language_extension values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.language_extension if v.language_extension != null && length(v.language_extension) > 0 }
}
output "kusto_clusters_location" {
  description = "Map of location values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.location if v.location != null && length(v.location) > 0 }
}
output "kusto_clusters_name" {
  description = "Map of name values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kusto_clusters_optimized_auto_scale" {
  description = "Map of optimized_auto_scale values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.optimized_auto_scale if v.optimized_auto_scale != null && length(v.optimized_auto_scale) > 0 }
}
output "kusto_clusters_outbound_network_access_restricted" {
  description = "Map of outbound_network_access_restricted values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.outbound_network_access_restricted if v.outbound_network_access_restricted != null }
}
output "kusto_clusters_public_ip_type" {
  description = "Map of public_ip_type values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.public_ip_type if v.public_ip_type != null && length(v.public_ip_type) > 0 }
}
output "kusto_clusters_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "kusto_clusters_purge_enabled" {
  description = "Map of purge_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.purge_enabled if v.purge_enabled != null }
}
output "kusto_clusters_resource_group_name" {
  description = "Map of resource_group_name values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "kusto_clusters_sku" {
  description = "Map of sku values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "kusto_clusters_streaming_ingestion_enabled" {
  description = "Map of streaming_ingestion_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.streaming_ingestion_enabled if v.streaming_ingestion_enabled != null }
}
output "kusto_clusters_tags" {
  description = "Map of tags values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "kusto_clusters_trusted_external_tenants" {
  description = "Map of trusted_external_tenants values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.trusted_external_tenants if v.trusted_external_tenants != null && length(v.trusted_external_tenants) > 0 }
}
output "kusto_clusters_uri" {
  description = "Map of uri values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.uri if v.uri != null && length(v.uri) > 0 }
}
output "kusto_clusters_zones" {
  description = "Map of zones values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.zones if v.zones != null && length(v.zones) > 0 }
}

