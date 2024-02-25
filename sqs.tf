resource "aws_sqs_queue" "sqs_payment_create_queue" {
  name = var.payment_create_queue
  
  tags = {
    App         = var.application_name,
    Environment = var.environment,
    OwnerTeam   = var.owner_team
  }
}

resource "aws_sqs_queue" "sqs_email_queue" {
  name = var.email_queue
  
  tags = {
    App         = var.application_name,
    Environment = var.environment,
    OwnerTeam   = var.owner_team
  }
}

resource "aws_sqs_queue" "sqs_payment_update_order_queue" {
  name = var.payment_update_order_queue
  
  tags = {
    App         = var.application_name,
    Environment = var.environment,
    OwnerTeam   = var.owner_team
  }
}