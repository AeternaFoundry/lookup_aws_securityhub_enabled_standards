variable "securityhub_enabled_standards_lookup" {
  description = <<EOT
Map of securityhub_enabled_standards_lookup, attributes below
Optional:
    - region
    - standards_subscription_arns
EOT

  type = map(object({
    region                      = optional(string)
    standards_subscription_arns = optional(list(string))
  }))
}

