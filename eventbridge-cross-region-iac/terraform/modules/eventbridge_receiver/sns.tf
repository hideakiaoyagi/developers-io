#-----------------------------
# SNS Topic
#-----------------------------

# This Terraform configuration can deploy an SNS topic only.
# You have to add any SNS Subscriptions using management console.

resource "aws_sns_topic" "this" {
  name = "${var.sys}-${var.env}-sns-topic"

  tags = {
    Name        = "${var.sys}-${var.env}-sns-topic"
    System      = var.sys
    Environment = var.env
  }
}

resource "aws_sns_topic_policy" "this" {
  arn = aws_sns_topic.this.arn

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        "Effect": "Allow",
        "Principal": {
          "Service": "events.amazonaws.com"
        },
        "Action": "sns:Publish",
        "Resource": aws_sns_topic.this.arn
      }
    ]
  })
}
