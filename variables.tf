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
    language_extensions = optional(list(object({
      image = string
      name  = string
    })))
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
  # --- Unconfirmed validation candidates, derived from azurerm_kusto_cluster's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.ClusterName] !regexp.MustCompile(`^[a-z][a-z0-9\-]+$`).MatchString(name)
  # path: name
  #   source:    [from validate.ClusterName] len(name) < 4 || len(name) > 22
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: sku.name
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: sku.capacity
  #   condition: value >= 1 && value <= 1000
  #   message:   must be between 1 and 1000
  # path: allowed_fqdns[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: allowed_ip_ranges[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: trusted_external_tenants[*]
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: optimized_auto_scale.minimum_instances
  #   condition: value >= 0 && value <= 1000
  #   message:   must be between 0 and 1000
  # path: optimized_auto_scale.maximum_instances
  #   condition: value >= 0 && value <= 1000
  #   message:   must be between 0 and 1000
  # path: language_extension.name
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: language_extension.image
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: public_ip_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: zones[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
  # path: name
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: image
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: name
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: image
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
  # path: engine_public_ip_id
  #   source:    [from commonids.ValidatePublicIPAddressID] !ok
  # path: engine_public_ip_id
  #   source:    [from commonids.ValidatePublicIPAddressID] err != nil
  # path: data_management_public_ip_id
  #   source:    [from commonids.ValidatePublicIPAddressID] !ok
  # path: data_management_public_ip_id
  #   source:    [from commonids.ValidatePublicIPAddressID] err != nil
}

