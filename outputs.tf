output "sentinel_data_connector_threat_intelligences" {
  description = "All sentinel_data_connector_threat_intelligence resources"
  value       = azurerm_sentinel_data_connector_threat_intelligence.sentinel_data_connector_threat_intelligences
}
output "sentinel_data_connector_threat_intelligences_log_analytics_workspace_id" {
  description = "List of log_analytics_workspace_id values across all sentinel_data_connector_threat_intelligences"
  value       = [for k, v in azurerm_sentinel_data_connector_threat_intelligence.sentinel_data_connector_threat_intelligences : v.log_analytics_workspace_id]
}
output "sentinel_data_connector_threat_intelligences_lookback_date" {
  description = "List of lookback_date values across all sentinel_data_connector_threat_intelligences"
  value       = [for k, v in azurerm_sentinel_data_connector_threat_intelligence.sentinel_data_connector_threat_intelligences : v.lookback_date]
}
output "sentinel_data_connector_threat_intelligences_name" {
  description = "List of name values across all sentinel_data_connector_threat_intelligences"
  value       = [for k, v in azurerm_sentinel_data_connector_threat_intelligence.sentinel_data_connector_threat_intelligences : v.name]
}
output "sentinel_data_connector_threat_intelligences_tenant_id" {
  description = "List of tenant_id values across all sentinel_data_connector_threat_intelligences"
  value       = [for k, v in azurerm_sentinel_data_connector_threat_intelligence.sentinel_data_connector_threat_intelligences : v.tenant_id]
}

