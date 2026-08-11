resource "snowflake_grant_account_role" "platform_admin_user_role" {
  role_name = snowflake_account_role.platform_admin.name
  user_name = module.platform_admin_user.name
}

resource "snowflake_grant_account_role" "data_engineer_user_role" {
  role_name = snowflake_account_role.data_engineer.name
  user_name = module.data_engineer_user.name
}

resource "snowflake_grant_account_role" "analytics_engineer_user_role" {
  role_name = snowflake_account_role.analytics_engineer.name
  user_name = module.analytics_engineer_user.name
}

resource "snowflake_grant_account_role" "data_analyst_user_role" {
  role_name = snowflake_account_role.data_analyst.name
  user_name = module.data_analyst_user.name
}

resource "snowflake_grant_account_role" "airflow_user_role" {
  role_name = snowflake_account_role.airflow_role.name
  user_name = module.airflow_user.name
}

resource "snowflake_grant_account_role" "data_user_role" {
  role_name = snowflake_account_role.data_role.name
  user_name = module.platform_admin_user.name
}
