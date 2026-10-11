resource "google_tags_tag_key" "tags_tag_keys" {
  for_each = var.tags_tag_keys

  parent               = each.value.parent
  short_name           = each.value.short_name
  allowed_values_regex = each.value.allowed_values_regex
  deletion_policy      = each.value.deletion_policy
  description          = each.value.description
  purpose              = each.value.purpose
  purpose_data         = each.value.purpose_data

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

