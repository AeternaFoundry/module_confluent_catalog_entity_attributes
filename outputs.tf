output "catalog_entity_attributes_id" {
  description = "Map of id values across all catalog_entity_attributes, keyed the same as var.catalog_entity_attributes except keys with no id are omitted"
  value       = { for k, v in confluent_catalog_entity_attributes.catalog_entity_attributes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "catalog_entity_attributes_attributes" {
  description = "Map of attributes values across all catalog_entity_attributes, keyed the same as var.catalog_entity_attributes except keys with no attributes are omitted"
  value       = { for k, v in confluent_catalog_entity_attributes.catalog_entity_attributes : k => v.attributes if v.attributes != null && length(v.attributes) > 0 }
}
output "catalog_entity_attributes_credentials" {
  description = "Map of credentials values across all catalog_entity_attributes, keyed the same as var.catalog_entity_attributes except keys with no credentials are omitted"
  value       = { for k, v in confluent_catalog_entity_attributes.catalog_entity_attributes : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "catalog_entity_attributes_entity_name" {
  description = "Map of entity_name values across all catalog_entity_attributes, keyed the same as var.catalog_entity_attributes except keys with no entity_name are omitted"
  value       = { for k, v in confluent_catalog_entity_attributes.catalog_entity_attributes : k => v.entity_name if v.entity_name != null && length(v.entity_name) > 0 }
}
output "catalog_entity_attributes_entity_type" {
  description = "Map of entity_type values across all catalog_entity_attributes, keyed the same as var.catalog_entity_attributes except keys with no entity_type are omitted"
  value       = { for k, v in confluent_catalog_entity_attributes.catalog_entity_attributes : k => v.entity_type if v.entity_type != null && length(v.entity_type) > 0 }
}
output "catalog_entity_attributes_rest_endpoint" {
  description = "Map of rest_endpoint values across all catalog_entity_attributes, keyed the same as var.catalog_entity_attributes except keys with no rest_endpoint are omitted"
  value       = { for k, v in confluent_catalog_entity_attributes.catalog_entity_attributes : k => v.rest_endpoint if v.rest_endpoint != null && length(v.rest_endpoint) > 0 }
}
output "catalog_entity_attributes_schema_registry_cluster" {
  description = "Map of schema_registry_cluster values across all catalog_entity_attributes, keyed the same as var.catalog_entity_attributes except keys with no schema_registry_cluster are omitted"
  value       = { for k, v in confluent_catalog_entity_attributes.catalog_entity_attributes : k => one(v.schema_registry_cluster) if v.schema_registry_cluster != null && length(v.schema_registry_cluster) > 0 }
}

