output "sentinel_data_connector_threat_intelligences_log_analytics_workspace_id" {
  description = "Map of log_analytics_workspace_id values across all sentinel_data_connector_threat_intelligences, keyed the same as var.sentinel_data_connector_threat_intelligences"
  value       = { for k, v in azurerm_sentinel_data_connector_threat_intelligence.sentinel_data_connector_threat_intelligences : k => v.log_analytics_workspace_id }
}
output "sentinel_data_connector_threat_intelligences_lookback_date" {
  description = "Map of lookback_date values across all sentinel_data_connector_threat_intelligences, keyed the same as var.sentinel_data_connector_threat_intelligences"
  value       = { for k, v in azurerm_sentinel_data_connector_threat_intelligence.sentinel_data_connector_threat_intelligences : k => v.lookback_date }
}
output "sentinel_data_connector_threat_intelligences_name" {
  description = "Map of name values across all sentinel_data_connector_threat_intelligences, keyed the same as var.sentinel_data_connector_threat_intelligences"
  value       = { for k, v in azurerm_sentinel_data_connector_threat_intelligence.sentinel_data_connector_threat_intelligences : k => v.name }
}
output "sentinel_data_connector_threat_intelligences_tenant_id" {
  description = "Map of tenant_id values across all sentinel_data_connector_threat_intelligences, keyed the same as var.sentinel_data_connector_threat_intelligences"
  value       = { for k, v in azurerm_sentinel_data_connector_threat_intelligence.sentinel_data_connector_threat_intelligences : k => v.tenant_id }
}

