locals {
  project = {
    "proj01" = {
      description = "Example description of project"
    }
  }

  workspace = {
    "terraform-tfe" = {
      description    = "Example automation workspace for Terraform Cloud resources."
      execution_mode = "remote"
      project_id     = module.project["proj01"].id
      vcs_repo_identifier = "${var.github_organization_name}/terraform-tfe"
    }

    "terraform-github" = {
      description         = "Example automation workspace for GitHub resources."
      execution_mode      = "remote"
      project_id          = module.project["proj01"].id
      vcs_repo_identifier = "${var.github_organization_name}/terraform-github"
    }
  }
}