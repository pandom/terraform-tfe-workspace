resource bitbucketserver_repository "this" {
  project     = var.repository_project_key
  name        = var.repository_name
  description = var.repository_description
  public      = var.repository_is_public
  slug        = var.repository_slug
}

resource tfe_workspace "this" {
  name         = var.tfe_workspace_name
  organization = var.tfe_org_name
  auto_apply   = var.tfe_auto_apply
  vcs_repo {
    identifier = "${var.repository_project_key}/${bitbucket_repository.this.slug}"
    branch     = var.repository_branch
    oauth_token_id = var.oauth_token_id
  }
}