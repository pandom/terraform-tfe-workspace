variable repository_owner {
  type = string
  description = "The name of the team who will own the newly created BitBucket repository."
}
variable repository_name {
  type = string
  description = "Display name of the repository to be created and used by the new Terraform workspace."
}
variable repository_slug {
  type = string
  description = "The name of the repository in the context of the URL. Typically in the form of the repository display name, but replacing spaces with dashes."
}
variable repository_project_key {
  type = string
  description = "The name of the BitBucket project under which to create this repository."
}
variable repository_description {
  type = string
  description = "Adds a description to both the newly created BitBucket repository and Terraform Enterprise workspace."
  default = "Created by Terraform Enterprise."
}
variable repository_is_private {
  type = boolean
  description = "Whether the repository should be private."
  default = False
}
variable tfe_workspace_name {
  type = string
  description = "The name of the Terraform Enterprise Workspace. Cannot contain spaces."
}
variable tfe_org_name {
  type = string
  description = "The Terraform Enterprise organisation to create the workspace within."
}
variable tfe_auto_apply {
  type = string
  description = "Determines whether manual intervention is required to move from 'plan' to 'apply'."
  default = "True"

}
variable repository_branch {
  type = string
  description = "Set the branch to monitor for changes that will trigger a Terraform run."
  default = "master"
}
variable oauth_token_id {
  type = string
  description = "The oath token to use for registering the Bitbucket repository with the Terraform Enterprise workspace. This value can be retrieved from the VCS Providers configuration page in the Settings menu for your Organization."
}