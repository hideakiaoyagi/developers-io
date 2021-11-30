#=======================================
# Module
#   - EventBridge (Receiver)
#=======================================

provider "aws" {
  region = var.region
}

#-----------------------------
# EventBridge
#-----------------------------
resource "aws_cloudwatch_event_bus" "this" {
  name = "${var.sys}-${var.env}-eventbridge-bus-receiver"

  tags = {
    Name        = "${var.sys}-${var.env}-eventbridge-bus-receiver"
    System      = var.sys
    Environment = var.env
  }
}

resource "aws_cloudwatch_event_rule" "this" {
  name           = "${var.sys}-${var.env}-eventbridge-rule-receiver"
  description    = "Publish event notificatons to SNS"
  event_bus_name = aws_cloudwatch_event_bus.this.name

  event_pattern = jsonencode({
    "source": ["aws.ec2"],
    "detail-type": ["EC2 Instance State-change Notification"],
    "detail": {
      "state": ["running", "stopped"]
    }
  })

  tags = {
    Name        = "${var.sys}-${var.env}-eventbridge-rule-receiver"
    System      = var.sys
    Environment = var.env
  }
}

resource "aws_cloudwatch_event_target" "this" {
  rule           = aws_cloudwatch_event_rule.this.name
  event_bus_name = aws_cloudwatch_event_bus.this.name
  arn            = aws_sns_topic.this.arn
}
