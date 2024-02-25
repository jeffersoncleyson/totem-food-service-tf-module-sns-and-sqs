resource "aws_sns_topic" "sns_payment_topic" {
  name              = var.payment_topic
  kms_master_key_id = "alias/aws/sns"

  tags = {
    App         = var.application_name,
    Environment = var.environment,
    OwnerTeam   = var.owner_team
  }
}

resource "aws_sns_topic" "sns_email_topic" {
  name              = var.email_topic
  kms_master_key_id = "alias/aws/sns"

  tags = {
    App         = var.application_name,
    Environment = var.environment,
    OwnerTeam   = var.owner_team
  }
}