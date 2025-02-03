
resource "aws_organizations_organization" "aws_org" {
  feature_set = "ALL"  # Enable all features, including SCPs
}

resource "aws_organizations_organizational_unit" "dev" {
  name      = "Development"
  parent_id = aws_organizations_organization.aws_org.roots[0].id
}

resource "aws_organizations_organizational_unit" "prod" {
  name      = "Production"
  parent_id = aws_organizations_organization.aws_org.roots[0].id
}


resource "aws_organizations_account" "dev_account" {
  name      = "dev-account"
  email     = var.dev_account_email
  parent_id = aws_organizations_organizational_unit.dev.id
}

resource "aws_organizations_account" "prod_account" {
  name      = "prod-account"
  email     = var.prod_account_email
  parent_id = aws_organizations_organizational_unit.prod.id
}


resource "aws_organizations_policy" "deny_delete_bucket" {
  name        = "DenyDeleteBucket"
  description = "Deny the DeleteBucket action"
  content     = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "DenyDeleteS3Bucket"
        Effect    = "Deny"
        Action    = "s3:DeleteBucket"
        Resource  = "*"
      }
    ]
  })

  type = "SERVICE_CONTROL_POLICY"
}


resource "aws_organizations_policy_attachment" "prod_scp_attachment" {
  policy_id = aws_organizations_policy.deny_delete_bucket.id
  target_id = aws_organizations_organizational_unit.prod.id
}