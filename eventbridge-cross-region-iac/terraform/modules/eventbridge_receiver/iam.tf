# This IAM Role is for attaching to the "Sender" EventBridge.
# It allows to put event from the "Sender" EventBridge to the "Receiver" EventBridge.

#-----------------------------
# IAM Role
#-----------------------------
resource "aws_iam_role" "this" {
  name                = "${var.sys}-${var.env}-eventbridge-role"
  assume_role_policy  = data.aws_iam_policy_document.assume_role_policy.json
  managed_policy_arns = [aws_iam_policy.this.arn]

  tags = {
    Name        = "${var.sys}-${var.env}-eventbridge-role"
    System      = var.sys
    Environment = var.env
  }
}

data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["events.amazonaws.com"]
    }
  }
}

#-----------------------------
# IAM Policy
#-----------------------------
resource "aws_iam_policy" "this" {
  name   = "${var.sys}-${var.env}-eventbridge-policy"
  policy = data.aws_iam_policy_document.this.json

  tags = {
    Name        = "${var.sys}-${var.env}-eventbridge-policy"
    System      = var.sys
    Environment = var.env
  }
}

data "aws_iam_policy_document" "this" {
  statement {
    actions = [
      "events:PutEvents",
    ]
    resources = [
      "${aws_cloudwatch_event_bus.this.arn}",
    ]
  }
}
