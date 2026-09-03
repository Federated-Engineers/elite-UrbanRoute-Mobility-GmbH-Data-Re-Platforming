resource "snowflake_warehouse" "urban-route-warehouse" {
  name                = var.snowflake_warehouse_name
  warehouse_size      = var.snowflake_warehouse_size
  auto_suspend        = var.snowflake_warehouse_auto_suspend
  auto_resume         = var.snowflake_warehouse_auto_resume
  initially_suspended = var.snowflake_warehouse_initially_suspended
  comment             = var.snowflake_warehouse_comment
}
