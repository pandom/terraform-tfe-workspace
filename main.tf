resource "bitbucket_repository" "this" {
  owner       = var.repository_owner
  name        = var.repository_name
  slug        = var.repository_slug
  project_key = var.repository_project_key
  description = var.repository_description
  is_private  = var.repository_is_private
}

resource tfe_workspace "this" {
  name         = var.tfe_workspace_name
  organization = var.tfe_org_name
  auto_apply   = var.tfe_auto_apply
  vcs_repo {
    identifier = "${bitbucket_repository.this.project_key}/${bitbucket_repository.this.slug}"
    branch     = var.repository_branch
    oauth_token_id = var.oauth_token_id
  }
}