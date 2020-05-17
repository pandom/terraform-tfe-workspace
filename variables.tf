variable template_repository_owner {
  type = string
  default = "grantorchard"
}

variable template_repository_name {
  type = string
  default = "terraform-repository-template"
}

variable repository_name {
  type = string
}

variable repository_description {
  type = string
  default = ""
}

variable repository_branch {
  type = string
  default = "master"
}

variable oauth_token_id {
  type = string
}

variable tfe_org_name {
  type = string
  default = "grantorchard"
}

variable tfe_workspace_name {
  type = string
  default = ""
}

variable tfe_auto_apply {
  type = bool
  default = false
}

variable repository_private {
  type = bool
  default = false
}

variable env_var {
  type = map
  default = {}
}

variable tf_var {
  type = map
  default = {}
}

variable create_repo {
  type = bool
  default = true
}
