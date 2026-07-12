output "kusto_clusters_id" {
  description = "Map of id values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.id }
}
output "kusto_clusters_allowed_fqdns" {
  description = "Map of allowed_fqdns values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.allowed_fqdns }
}
output "kusto_clusters_allowed_ip_ranges" {
  description = "Map of allowed_ip_ranges values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.allowed_ip_ranges }
}
output "kusto_clusters_auto_stop_enabled" {
  description = "Map of auto_stop_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.auto_stop_enabled }
}
output "kusto_clusters_data_ingestion_uri" {
  description = "Map of data_ingestion_uri values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.data_ingestion_uri }
}
output "kusto_clusters_disk_encryption_enabled" {
  description = "Map of disk_encryption_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.disk_encryption_enabled }
}
output "kusto_clusters_double_encryption_enabled" {
  description = "Map of double_encryption_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.double_encryption_enabled }
}
output "kusto_clusters_identity" {
  description = "Map of identity values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.identity }
}
output "kusto_clusters_language_extension" {
  description = "Map of language_extension values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.language_extension }
}
output "kusto_clusters_language_extensions" {
  description = "Map of language_extensions values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.language_extensions }
}
output "kusto_clusters_location" {
  description = "Map of location values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.location }
}
output "kusto_clusters_name" {
  description = "Map of name values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.name }
}
output "kusto_clusters_optimized_auto_scale" {
  description = "Map of optimized_auto_scale values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.optimized_auto_scale }
}
output "kusto_clusters_outbound_network_access_restricted" {
  description = "Map of outbound_network_access_restricted values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.outbound_network_access_restricted }
}
output "kusto_clusters_public_ip_type" {
  description = "Map of public_ip_type values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.public_ip_type }
}
output "kusto_clusters_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.public_network_access_enabled }
}
output "kusto_clusters_purge_enabled" {
  description = "Map of purge_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.purge_enabled }
}
output "kusto_clusters_resource_group_name" {
  description = "Map of resource_group_name values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.resource_group_name }
}
output "kusto_clusters_sku" {
  description = "Map of sku values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.sku }
}
output "kusto_clusters_streaming_ingestion_enabled" {
  description = "Map of streaming_ingestion_enabled values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.streaming_ingestion_enabled }
}
output "kusto_clusters_tags" {
  description = "Map of tags values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.tags }
}
output "kusto_clusters_trusted_external_tenants" {
  description = "Map of trusted_external_tenants values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.trusted_external_tenants }
}
output "kusto_clusters_uri" {
  description = "Map of uri values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.uri }
}
output "kusto_clusters_virtual_network_configuration" {
  description = "Map of virtual_network_configuration values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.virtual_network_configuration }
}
output "kusto_clusters_zones" {
  description = "Map of zones values across all kusto_clusters, keyed the same as var.kusto_clusters"
  value       = { for k, v in azurerm_kusto_cluster.kusto_clusters : k => v.zones }
}

