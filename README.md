This module should be used for the onboarding of new workspaces in Terraform Enterprise.

It will create a repository in the corporate BitBucket instance, create a Workspace in Terraform Enterprise, and connect it to the newly created repository.

Sample usage:

```
module "my-repo" {
  source                 = "tfe.humblelab.com/demos/management/workspace"
  version                = "0.0.2"
  repository_owner       = "Grant Orchard"
  repository_name        = "grim repo"
  repository_slug        = "grim-repo"
  repository_project_key = "demo"
  tfe_workspace_name     = "grim-repo"
  tfe_org_name           = "demo"
  tfe_auto_apply         = "True"
}
```


