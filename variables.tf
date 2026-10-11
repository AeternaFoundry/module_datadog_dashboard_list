variable "dashboard_lists" {
  description = <<EOT
Map of dashboard_lists, attributes below
Required:
    - name
Optional:
    - dash_item (block):
        - dash_id (required)
        - type (required)
EOT

  type = map(object({
    name = string
    dash_item = optional(list(object({
      dash_id = string
      type    = string
    })))
  }))
}

