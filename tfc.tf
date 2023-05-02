provider "tfe" {
}
resource "tfe_project" "team" {
  name = var.team_name
}

resource "tfe_team" "team" {
  name = var.team_name
}

resource "tfe_team_project_access" "admin" {
  access     = "admin"
  team_id    = tfe_team.team.id
  project_id = tfe_project.team.id
}

locals {
  email_list = toset(split(",", var.team_members))
}
resource "tfe_organization_membership" "org_member" {
  for_each = local.email_list
  email    = each.key
}

resource "tfe_team_organization_member" "test" {
  for_each = tfe_organization_membership.org_member
  team_id = tfe_team.team.id
  organization_membership_id = each.value.id
}
