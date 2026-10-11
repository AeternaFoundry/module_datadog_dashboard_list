output "dashboard_lists_id" {
  description = "Map of id values across all dashboard_lists, keyed the same as var.dashboard_lists except keys with no id are omitted"
  value       = { for k, v in datadog_dashboard_list.dashboard_lists : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dashboard_lists_dash_item" {
  description = "Map of dash_item values across all dashboard_lists, keyed the same as var.dashboard_lists except keys with no dash_item are omitted"
  value       = { for k, v in datadog_dashboard_list.dashboard_lists : k => v.dash_item if v.dash_item != null && length(v.dash_item) > 0 }
}
output "dashboard_lists_name" {
  description = "Map of name values across all dashboard_lists, keyed the same as var.dashboard_lists except keys with no name are omitted"
  value       = { for k, v in datadog_dashboard_list.dashboard_lists : k => v.name if v.name != null && length(v.name) > 0 }
}

