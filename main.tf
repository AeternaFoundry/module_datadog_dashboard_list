resource "datadog_dashboard_list" "dashboard_lists" {
  for_each = var.dashboard_lists

  name = each.value.name

  dynamic "dash_item" {
    for_each = each.value.dash_item != null ? each.value.dash_item : []
    content {
      dash_id = dash_item.value.dash_id
      type    = dash_item.value.type
    }
  }
}

