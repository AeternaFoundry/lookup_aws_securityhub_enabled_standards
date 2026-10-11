data "aws_securityhub_enabled_standards" "securityhub_enabled_standards_lookup" {
  for_each = var.securityhub_enabled_standards_lookup

  region                      = each.value.region
  standards_subscription_arns = each.value.standards_subscription_arns
}

