resource "aws_sns_topic_subscription" "sns_payment_topic_to_sqs_payment_create_queue_subscription" {
  topic_arn = aws_sns_topic.sns_payment_topic.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.sqs_payment_create_queue.arn
  filter_policy_scope = "MessageAttributes"
  filter_policy = <<EOF
  {
    "status": ["WAITING_PAYMENT"]
  }
  EOF
}

resource "aws_sns_topic_subscription" "sns_email_topic_to_sqs_email_subscription" {
  topic_arn = aws_sns_topic.sns_email_topic.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.sqs_email_queue.arn
}

resource "aws_sns_topic_subscription" "sns_payment_topic_to_sqs_payment_update_order_queue_subscription" {
  topic_arn = aws_sns_topic.sns_payment_topic.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.sqs_payment_update_order_queue.arn
  filter_policy_scope = "MessageAttributes"
  filter_policy = <<EOF
  {
    "order": ["UPDATE"]
  }
  EOF
}