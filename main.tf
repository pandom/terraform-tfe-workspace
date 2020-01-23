resource "bitbucket_repository" "this" {
  owner       = var.owner
  name        = var.repo_name
  slug        = var.slug
  project_key = var.project_key
  description = var.description
  is_private  = var.is_private
}

resource "tfe_workspace" "this" {
  name         = var.workspace_name
  organization = var.org_name
  auto_apply   = var.auto_apply
  vcs_repo {
    identifier = "${bitbucket_repository.this.project_key}/${bitbucket_repository.this.slug}"
    branch     = var.branch
    oauth_token_id = var.oauth_token_id
  }
}




