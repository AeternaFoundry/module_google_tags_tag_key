variable "tags_tag_keys" {
  description = <<EOT
Map of tags_tag_keys, attributes below
Required:
    - parent
    - short_name
Optional:
    - allowed_values_regex
    - deletion_policy
    - description
    - purpose
    - purpose_data
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    parent               = string
    short_name           = string
    allowed_values_regex = optional(string)
    deletion_policy      = optional(string)
    description          = optional(string)
    purpose              = optional(string)
    purpose_data         = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.tags_tag_keys : (
        length(v.short_name) >= 1 && length(v.short_name) <= 256
      )
    ])
    error_message = "must be between 1 and 256 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.tags_tag_keys : (
        v.description == null || (length(v.description) >= 0 && length(v.description) <= 256)
      )
    ])
    error_message = "must be between 0 and 256 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

