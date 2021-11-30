output "eventbridge_eventbus_arn" {
  value = aws_cloudwatch_event_bus.this.arn
}

output "iam_role_arn" {
  value = aws_iam_role.this.arn
}
