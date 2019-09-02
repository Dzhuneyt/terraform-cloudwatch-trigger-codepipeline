locals {
  git_branch = var.branch_to_monitor
  codepipeline_arn = var.codepipeline_arn
  repo_arn = var.codecommit_repo_arn
}
