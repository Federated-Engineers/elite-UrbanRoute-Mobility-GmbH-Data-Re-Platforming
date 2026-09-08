# resource "snowflake_grant_account_role" "platform_admin_to_data_role" {
#   role_name        = snowflake_account_role.platform_admin.name
#   parent_role_name = snowflake_account_role.data_role.name
# }

# resource "snowflake_grant_account_role" "engineer_to_platform_admin" {
#   role_name        = snowflake_account_role.data_engineer.name
#   parent_role_name = snowflake_account_role.platform_admin.name
# }

# resource "snowflake_grant_account_role" "analytics_to_platform_admin" {
#   role_name        = snowflake_account_role.analytics_engineer.name
#   parent_role_name = snowflake_account_role.platform_admin.name
# }

# resource "snowflake_grant_account_role" "analyst_to_platform_admin" {
#   role_name        = snowflake_account_role.data_analyst.name
#   parent_role_name = snowflake_account_role.platform_admin.name
# }

# resource "snowflake_grant_account_role" "airflow_to_service_role" {
#   role_name        = snowflake_account_role.airflow_role.name
#   parent_role_name = snowflake_account_role.service_role.name
# }

# resource "snowflake_grant_account_role" "dbt_to_service_role" {
#   role_name        = snowflake_account_role.dbt_role.name
#   parent_role_name = snowflake_account_role.service_role.name
# }
