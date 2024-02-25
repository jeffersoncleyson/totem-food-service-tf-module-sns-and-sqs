resource "aws_sqs_queue_policy" "sns_payment_topic_to_sqs_payment_create_queue_policy" {
  queue_url = aws_sqs_queue.sqs_payment_create_queue.id
  policy    = <<EOF
{
  "Version": "2012-10-17",
  "Id": "sns_sqs_policy",
  "Statement": [
    {
      "Sid": "Allow SNS publish to SQS",
      "Effect": "Allow",
      "Principal": {
        "Service": "sns.amazonaws.com"
      },
      "Action": "sqs:SendMessage",
      "Resource": "${aws_sqs_queue.sqs_payment_create_queue.arn}",
      "Condition": {
        "ArnEquals": {
          "aws:SourceArn": "${aws_sns_topic.sns_payment_topic.arn}"
        }
      }
    }
  ]
}
EOF
}

resource "aws_sqs_queue_policy" "sns_email_topic_to_sqs_email_queue_policy" {
  queue_url = aws_sqs_queue.sqs_email_queue.id
  policy    = <<EOF
{
  "Version": "2012-10-17",
  "Id": "sns_sqs_policy",
  "Statement": [
    {
      "Sid": "Allow SNS publish to SQS",
      "Effect": "Allow",
      "Principal": {
        "Service": "sns.amazonaws.com"
      },
      "Action": "sqs:SendMessage",
      "Resource": "${aws_sqs_queue.sqs_email_queue.arn}",
      "Condition": {
        "ArnEquals": {
          "aws:SourceArn": "${aws_sns_topic.sns_email_topic.arn}"
        }
      }
    }
  ]
}
EOF
}

resource "aws_sqs_queue_policy" "sns_payment_topic_to_payment_update_order_queue_policy" {
  queue_url = aws_sqs_queue.sqs_payment_update_order_queue.id
  policy    = <<EOF
{
  "Version": "2012-10-17",
  "Id": "sns_sqs_policy",
  "Statement": [
    {
      "Sid": "Allow SNS publish to SQS",
      "Effect": "Allow",
      "Principal": {
        "Service": "sns.amazonaws.com"
      },
      "Action": "sqs:SendMessage",
      "Resource": "${aws_sqs_queue.sqs_payment_update_order_queue.arn}",
      "Condition": {
        "ArnEquals": {
          "aws:SourceArn": "${aws_sns_topic.sns_payment_topic.arn}"
        }
      }
    }
  ]
}
EOF
}