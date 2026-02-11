variable "sentinel_data_connector_threat_intelligences" {
  description = <<EOT
Map of sentinel_data_connector_threat_intelligences, attributes below
Required:
    - log_analytics_workspace_id
    - name
Optional:
    - lookback_date
    - tenant_id
EOT

  type = map(object({
    log_analytics_workspace_id = string
    name                       = string
    lookback_date              = optional(string) # Default: "01/01/1970 00:00:00"
    tenant_id                  = optional(string)
  }))
}

