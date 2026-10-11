variable "catalog_entity_attributes" {
  description = <<EOT
Map of catalog_entity_attributes, attributes below
Required:
    - entity_name
    - entity_type
Optional:
    - attributes
    - rest_endpoint
    - credentials (block):
        - key (required)
        - secret (required)
    - schema_registry_cluster (block):
        - id (required)
EOT

  type = map(object({
    entity_name   = string
    entity_type   = string
    attributes    = optional(map(string))
    rest_endpoint = optional(string)
    credentials = optional(object({
      key    = string
      secret = string
    }))
    schema_registry_cluster = optional(object({
      id = string
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

