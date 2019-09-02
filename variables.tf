variable "codepipeline_arn" {
  description = "Trigger the following CodePipeline"
}
variable "codecommit_repo_arn" {
  description = "The repo which will be monitored"
}
variable "branch_to_monitor" {
  description = "Monitor changes on this branch of CodeCommit"
}
variable "tag" {
  description = "Tags the resources with this name"
}
