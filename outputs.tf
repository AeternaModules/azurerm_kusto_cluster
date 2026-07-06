output "kusto_clusters" {
  description = "All kusto_cluster resources"
  value       = azurerm_kusto_cluster.kusto_clusters
}
output "kusto_clusters_allowed_fqdns" {
  description = "List of allowed_fqdns values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.allowed_fqdns]
}
output "kusto_clusters_allowed_ip_ranges" {
  description = "List of allowed_ip_ranges values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.allowed_ip_ranges]
}
output "kusto_clusters_auto_stop_enabled" {
  description = "List of auto_stop_enabled values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.auto_stop_enabled]
}
output "kusto_clusters_data_ingestion_uri" {
  description = "List of data_ingestion_uri values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.data_ingestion_uri]
}
output "kusto_clusters_disk_encryption_enabled" {
  description = "List of disk_encryption_enabled values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.disk_encryption_enabled]
}
output "kusto_clusters_double_encryption_enabled" {
  description = "List of double_encryption_enabled values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.double_encryption_enabled]
}
output "kusto_clusters_identity" {
  description = "List of identity values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.identity]
}
output "kusto_clusters_language_extension" {
  description = "List of language_extension values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.language_extension]
}
output "kusto_clusters_language_extensions" {
  description = "List of language_extensions values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.language_extensions]
}
output "kusto_clusters_location" {
  description = "List of location values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.location]
}
output "kusto_clusters_name" {
  description = "List of name values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.name]
}
output "kusto_clusters_optimized_auto_scale" {
  description = "List of optimized_auto_scale values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.optimized_auto_scale]
}
output "kusto_clusters_outbound_network_access_restricted" {
  description = "List of outbound_network_access_restricted values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.outbound_network_access_restricted]
}
output "kusto_clusters_public_ip_type" {
  description = "List of public_ip_type values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.public_ip_type]
}
output "kusto_clusters_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.public_network_access_enabled]
}
output "kusto_clusters_purge_enabled" {
  description = "List of purge_enabled values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.purge_enabled]
}
output "kusto_clusters_resource_group_name" {
  description = "List of resource_group_name values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.resource_group_name]
}
output "kusto_clusters_sku" {
  description = "List of sku values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.sku]
}
output "kusto_clusters_streaming_ingestion_enabled" {
  description = "List of streaming_ingestion_enabled values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.streaming_ingestion_enabled]
}
output "kusto_clusters_tags" {
  description = "List of tags values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.tags]
}
output "kusto_clusters_trusted_external_tenants" {
  description = "List of trusted_external_tenants values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.trusted_external_tenants]
}
output "kusto_clusters_uri" {
  description = "List of uri values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.uri]
}
output "kusto_clusters_virtual_network_configuration" {
  description = "List of virtual_network_configuration values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.virtual_network_configuration]
}
output "kusto_clusters_zones" {
  description = "List of zones values across all kusto_clusters"
  value       = [for k, v in azurerm_kusto_cluster.kusto_clusters : v.zones]
}

