variable "comment" {
  description = "A comment to apply to all resources"
  type        = string
  default     = "Created by terraform"
}

variable "snowflake_warehouse_size" {
  type        = string
  description = "Size of the Snowflake warehouse."
  default     = "XSMALL"
}

variable "snowflake_warehouse_auto_suspend" {
  type        = number
  description = "Number of seconds of inactivity before the warehouse automatically suspends."
  default     = 60
}

variable "snowflake_warehouse_auto_resume" {
  type        = string
  description = "Whether the warehouse automatically resumes when a query is submitted."
  default     = true
}

variable "snowflake_warehouse_initially_suspended" {
  type        = bool
  description = "Whether the warehouse should be created in a suspended state."
  default     = true
}

variable "snowflake_warehouse_comment" {
  type        = string
  description = "Comment describing the purpose of the warehouse."
  default     = "Warehouse for dbt workloads"
}

variable "disabled" {
  type    = string
  default = false
}

variable "must_change_password" {
  type        = string
  description = "Whether the user must change their password upon first login."
  default     = false
}

variable "disable_mfa" {
  type        = string
  description = "Whether multi-factor authentication (MFA) is disabled for the user."
  default     = true
}
