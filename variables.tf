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
    lookback_date              = optional(string)
    tenant_id                  = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_sentinel_data_connector_threat_intelligence's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] !ok
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] err != nil
  # path: tenant_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: lookback_date
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
}

