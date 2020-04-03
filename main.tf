resource tfe_workspace "this" {
  name         = var.tfe_workspace_name
  organization = var.tfe_org_name
  auto_apply   = var.tfe_auto_apply

  vcs_repo {
    identifier = github_repository.this.full_name
    branch     = var.repository_branch
    oauth_token_id = var.oauth_token_id
  }
}

resource github_repository "this" {
  name        = var.repository_name
  description = var.repository_description

  private = var.repository_private

  template {
    owner = var.template_repository_owner
    repository = var.template_repository_name
  }
}

resource tfe_variable "env" {
  for_each var.env_var {
    key          = each.key
    value        = each.value
    category     = "env"
    workspace_id = tfe_workspace.this.id
    description  = ""
  }
}

resource tfe_variable "tf" {
  for_each var.env_var {
    key          = each.key
    value        = each.value
    category     = "terraform"
    workspace_id = tfe_workspace.this.id
    description  = ""
  }
}