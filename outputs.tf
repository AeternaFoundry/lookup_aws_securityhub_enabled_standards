output "securityhub_enabled_standards_lookup_region" {
  description = "Map of region values across all securityhub_enabled_standards_lookup, keyed the same as var.securityhub_enabled_standards_lookup"
  value       = { for k, v in data.aws_securityhub_enabled_standards.securityhub_enabled_standards_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "securityhub_enabled_standards_lookup_standards_subscription_arns" {
  description = "Map of standards_subscription_arns values across all securityhub_enabled_standards_lookup, keyed the same as var.securityhub_enabled_standards_lookup"
  value       = { for k, v in data.aws_securityhub_enabled_standards.securityhub_enabled_standards_lookup : k => v.standards_subscription_arns if v.standards_subscription_arns != null && length(v.standards_subscription_arns) > 0 }
}
output "securityhub_enabled_standards_lookup_standards_subscriptions" {
  description = "Map of standards_subscriptions values across all securityhub_enabled_standards_lookup, keyed the same as var.securityhub_enabled_standards_lookup"
  value       = { for k, v in data.aws_securityhub_enabled_standards.securityhub_enabled_standards_lookup : k => v.standards_subscriptions if v.standards_subscriptions != null && length(v.standards_subscriptions) > 0 }
}

