output "cloudwatch_rule_id" {
  value = aws_cloudwatch_event_rule.codecommit_activity.id
}
output "cloudwatch_target_id" {
  value = aws_cloudwatch_event_target.cloudwatch_triggers_pipeline.id
}
