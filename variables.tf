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
    - optimized_auto_scale (block):
        - maximum_instances (required)
        - minimum_instances (required)
EOT

  type = map(object({
    location                           = string
    name                               = string
    resource_group_name                = string
    allowed_fqdns                      = optional(list(string))
    allowed_ip_ranges                  = optional(list(string))
    auto_stop_enabled                  = optional(bool)
    disk_encryption_enabled            = optional(bool)
    double_encryption_enabled          = optional(bool)
    outbound_network_access_restricted = optional(bool)
    public_ip_type                     = optional(string)
    public_network_access_enabled      = optional(bool)
    purge_enabled                      = optional(bool)
    streaming_ingestion_enabled        = optional(bool)
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
    language_extension = optional(list(object({
      image = string
      name  = string
    })))
    optimized_auto_scale = optional(object({
      maximum_instances = number
      minimum_instances = number
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.kusto_clusters : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_clusters : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_clusters : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_clusters : (
        v.sku.capacity == null || (v.sku.capacity >= 1 && v.sku.capacity <= 1000)
      )
    ])
    error_message = "must be between 1 and 1000"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_clusters : (
        v.allowed_fqdns == null || (alltrue([for x in v.allowed_fqdns : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_clusters : (
        v.allowed_ip_ranges == null || (alltrue([for x in v.allowed_ip_ranges : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_clusters : (
        v.optimized_auto_scale == null || (v.optimized_auto_scale.minimum_instances >= 0 && v.optimized_auto_scale.minimum_instances <= 1000)
      )
    ])
    error_message = "must be between 0 and 1000"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_clusters : (
        v.optimized_auto_scale == null || (v.optimized_auto_scale.maximum_instances >= 0 && v.optimized_auto_scale.maximum_instances <= 1000)
      )
    ])
    error_message = "must be between 0 and 1000"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_clusters : (
        v.zones == null || (alltrue([for x in v.zones : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_clusters : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 25 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

