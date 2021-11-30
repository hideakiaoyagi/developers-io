#=======================================
# Module
#   - EventBridge (Sender)
#=======================================

provider "aws" {
  region = var.region
}

#-----------------------------
# EventBridge
#-----------------------------
resource "aws_cloudwatch_event_rule" "this" {
  name        = "${var.sys}-${var.env}-eventbridge-rule-sender"
  description = "Send events to receiver EventBridge"

  event_pattern = jsonencode({
    "source": ["aws.ec2"],
    "detail-type": ["EC2 Instance State-change Notification"]
  })

  tags = {
    Name        = "${var.sys}-${var.env}-eventbridge-rule-sender"
    System      = var.sys
    Environment = var.env
  }
}

resource "aws_cloudwatch_event_target" "this" {
  rule     = aws_cloudwatch_event_rule.this.name
  arn      = var.target_eventbus_arn
  role_arn = var.iam_role_arn
}
