# Input variable definitions

variable "application_name" {
  description = "Application name"
  type        = string
}

variable "environment" {
  description = "Application environment"
  type        = string
}

variable "owner_team" {
  description = "Owener Application team"
  type        = string
}

variable "payment_topic" {
  description = "Payment Topic"
  type        = string
}

variable "email_topic" {
  description = "Email Topic"
  type        = string
}

variable "payment_create_queue" {
  description = "Payment Create Queue"
  type        = string
}

variable "payment_update_order_queue" {
  description = "Payment Create Queue"
  type        = string
}

variable "email_queue" {
  description = "Email Queue"
  type        = string
}