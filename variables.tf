variable "kusto_clusters" {
  description = <<EOT
Map of kusto_clusters, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku (block):
        - capacity (optional)
        - name (required)
Optional:
    - allowed_fqdns
    - allowed_ip_ranges
    - auto_stop_enabled
    - disk_encryption_enabled
    - double_encryption_enabled
    - outbound_network_access_restricted
    - public_ip_type
    - public_network_access_enabled
    - purge_enabled
    - streaming_ingestion_enabled
    - tags
    - trusted_external_tenants
    - zones
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - language_extension (block):
        - image (required)
        - name (required)
    - language_extensions (block):
        - image (required)
        - name (required)
    - optimized_auto_scale (block):
        - maximum_instances (required)
        - minimum_instances (required)
    - virtual_network_configuration (block):
        - data_management_public_ip_id (required)
        - engine_public_ip_id (required)
        - subnet_id (required)
EOT

  type = map(object({
    location                           = string
    name                               = string
    resource_group_name                = string
    allowed_fqdns                      = optional(list(string))
    allowed_ip_ranges                  = optional(list(string))
    auto_stop_enabled                  = optional(bool, true)
    disk_encryption_enabled            = optional(bool, false)
    double_encryption_enabled          = optional(bool)
    outbound_network_access_restricted = optional(bool, false)
    public_ip_type                     = optional(string, "IPv4")
    public_network_access_enabled      = optional(bool, true)
    purge_enabled                      = optional(bool, false)
    streaming_ingestion_enabled        = optional(bool, false)
    tags                               = optional(map(string))
    trusted_external_tenants           = optional(list(string))
    zones                              = optional(set(string))
    sku = object({
      capacity = optional(number)
      name     = string
    })
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    language_extension = optional(object({
      image = string
      name  = string
    }))
    language_extensions = optional(object({
      image = string
      name  = string
    }))
    optimized_auto_scale = optional(object({
      maximum_instances = number
      minimum_instances = number
    }))
    virtual_network_configuration = optional(object({
      data_management_public_ip_id = string
      engine_public_ip_id          = string
      subnet_id                    = string
    }))
  }))
}

