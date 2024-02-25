# Output value definitions

############################################### [SNS] Outputs

output "sns_topic_name" {
  value = aws_sns_topic.sns_payment_topic.name
}
output "sns_topic_arn" {
  value = aws_sns_topic.sns_payment_topic.arn
}

###############################################

############################################### [SQS] Outputs

output "sqs_queue_name" {
  value = aws_sqs_queue.sqs_payment_create_queue.name
}
output "sqs_queue_url" {
  value = aws_sqs_queue.sqs_payment_create_queue.url
}

###############################################