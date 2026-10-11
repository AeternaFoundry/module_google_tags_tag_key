output "tags_tag_keys_id" {
  description = "Map of id values across all tags_tag_keys, keyed the same as var.tags_tag_keys except keys with no id are omitted"
  value       = { for k, v in google_tags_tag_key.tags_tag_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tags_tag_keys_allowed_values_regex" {
  description = "Map of allowed_values_regex values across all tags_tag_keys, keyed the same as var.tags_tag_keys except keys with no allowed_values_regex are omitted"
  value       = { for k, v in google_tags_tag_key.tags_tag_keys : k => v.allowed_values_regex if v.allowed_values_regex != null && length(v.allowed_values_regex) > 0 }
}
output "tags_tag_keys_create_time" {
  description = "Map of create_time values across all tags_tag_keys, keyed the same as var.tags_tag_keys except keys with no create_time are omitted"
  value       = { for k, v in google_tags_tag_key.tags_tag_keys : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "tags_tag_keys_deletion_policy" {
  description = "Map of deletion_policy values across all tags_tag_keys, keyed the same as var.tags_tag_keys except keys with no deletion_policy are omitted"
  value       = { for k, v in google_tags_tag_key.tags_tag_keys : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "tags_tag_keys_description" {
  description = "Map of description values across all tags_tag_keys, keyed the same as var.tags_tag_keys except keys with no description are omitted"
  value       = { for k, v in google_tags_tag_key.tags_tag_keys : k => v.description if v.description != null && length(v.description) > 0 }
}
output "tags_tag_keys_name" {
  description = "Map of name values across all tags_tag_keys, keyed the same as var.tags_tag_keys except keys with no name are omitted"
  value       = { for k, v in google_tags_tag_key.tags_tag_keys : k => v.name if v.name != null && length(v.name) > 0 }
}
output "tags_tag_keys_namespaced_name" {
  description = "Map of namespaced_name values across all tags_tag_keys, keyed the same as var.tags_tag_keys except keys with no namespaced_name are omitted"
  value       = { for k, v in google_tags_tag_key.tags_tag_keys : k => v.namespaced_name if v.namespaced_name != null && length(v.namespaced_name) > 0 }
}
output "tags_tag_keys_parent" {
  description = "Map of parent values across all tags_tag_keys, keyed the same as var.tags_tag_keys except keys with no parent are omitted"
  value       = { for k, v in google_tags_tag_key.tags_tag_keys : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "tags_tag_keys_purpose" {
  description = "Map of purpose values across all tags_tag_keys, keyed the same as var.tags_tag_keys except keys with no purpose are omitted"
  value       = { for k, v in google_tags_tag_key.tags_tag_keys : k => v.purpose if v.purpose != null && length(v.purpose) > 0 }
}
output "tags_tag_keys_purpose_data" {
  description = "Map of purpose_data values across all tags_tag_keys, keyed the same as var.tags_tag_keys except keys with no purpose_data are omitted"
  value       = { for k, v in google_tags_tag_key.tags_tag_keys : k => v.purpose_data if v.purpose_data != null && length(v.purpose_data) > 0 }
}
output "tags_tag_keys_short_name" {
  description = "Map of short_name values across all tags_tag_keys, keyed the same as var.tags_tag_keys except keys with no short_name are omitted"
  value       = { for k, v in google_tags_tag_key.tags_tag_keys : k => v.short_name if v.short_name != null && length(v.short_name) > 0 }
}
output "tags_tag_keys_update_time" {
  description = "Map of update_time values across all tags_tag_keys, keyed the same as var.tags_tag_keys except keys with no update_time are omitted"
  value       = { for k, v in google_tags_tag_key.tags_tag_keys : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

