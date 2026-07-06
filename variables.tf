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
  validation {
    condition = alltrue([
      for k, v in var.sentinel_data_connector_threat_intelligences : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_data_connector_threat_intelligences : (
        v.tenant_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.tenant_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_sentinel_data_connector_threat_intelligence's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] !ok
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] err != nil
  # path: lookback_date
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
}

