output "organization_id" {
  description = "The AWS Organization ID"
  value       = aws_organizations_organization.aws_org.id
}