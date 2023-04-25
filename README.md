
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | n/a |
| <a name="provider_vault"></a> [vault](#provider\_vault) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_organization_membership.org_member](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/organization_membership) | resource |
| [tfe_project.team](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/project) | resource |
| [tfe_team.team](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team) | resource |
| [tfe_team_members.team_membership](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team_members) | resource |
| [tfe_team_project_access.admin](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team_project_access) | resource |
| [vault_gcp_secret_backend.google](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/gcp_secret_backend) | resource |
| [vault_namespace.team_space](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/namespace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_team_members"></a> [team\_members](#input\_team\_members) | Comma separated list of emails | `string` | n/a | yes |
| <a name="input_team_name"></a> [team\_name](#input\_team\_name) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
