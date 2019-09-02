A terraform module that helps you to provision a CloudWatch event that listens for activity on a given CodeCommit repo's branch and automatically triggers a CodePipeline.

More information is available on this guide:
https://docs.aws.amazon.com/codepipeline/latest/userguide/triggering.html

If you use this module, make sure [to set `PollForSourceChanges=false`](https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html), to avoid double triggering of the CodePipeline.

Example usage:

    module "cloudwatch_triggers_codepipeline" {
      source = "./cloudwatch-codecommit-trigger-codepipeline"
      aws_region = "eu-west-1"
      branch_to_monitor = "develop"
      codecommit_repo_arn = data.aws_codecommit_repository.my_repo.arn
      codepipeline_arn = aws_codepipeline.codepipeline_develop.arn
      tag = var.tag
    
      providers = {
        aws = aws
      }
    }

Make sure you point it to existing CodeCommit repos and CodePipeline instances:

    data "aws_codecommit_repository" "my_repo" {
      repository_name = "Repo-Name-Here"
    }

    resource "aws_codepipeline" "codepipeline_develop" {
      # .. Definition here
    }
