module "platform_admin_user" {
  source = "../modules/user"

  name         = "PLATFORM_ADMIN_USER"
  login_name   = "PLATFORM_ADMIN"
  first_name   = "Elite"
  last_name    = "Platform"
  password     = data.aws_ssm_parameter.snowflake_password.value
  comment      = "Platform administration user"
  display_name = "Elite Platform Admin"
  disabled     = var.disabled

  default_warehouse = module.platform_admin_wh.name
  default_role      = snowflake_account_role.platform_admin.name

  must_change_password = var.must_change_password
  disable_mfa          = var.disable_mfa
}

module "data_engineer_user" {
  source = "../modules/user"

  name         = "DATA_ENGINEER_USER"
  login_name   = "DATA_ENGINEER"
  first_name   = "Elite"
  last_name    = "DataEngineer"
  password     = data.aws_ssm_parameter.snowflake_password.value
  comment      = "Data engineering user"
  display_name = "Elite Data Engineer"
  disabled     = var.disabled

  default_warehouse = module.data_engineer_wh.name
  default_role      = snowflake_account_role.data_engineer.name

  must_change_password = var.must_change_password
  disable_mfa          = var.disable_mfa
}

module "analytics_engineer_user" {
  source = "../modules/user"

  name         = "ANALYTICS_ENGINEER_USER"
  login_name   = "ANALYTICS_ENGINEER"
  first_name   = "Elite"
  last_name    = "AnalyticsEngineer"
  password     = data.aws_ssm_parameter.snowflake_password.value
  comment      = "Analytics engineering user"
  display_name = "Elite Analytics Engineer"
  disabled     = var.disabled

  default_warehouse = module.analytics_engineer_wh.name
  default_role      = snowflake_account_role.analytics_engineer.name

  must_change_password = var.must_change_password
  disable_mfa          = var.disable_mfa
}

module "data_analyst_user" {
  source = "../modules/user"

  name         = "DATA_ANALYST_USER"
  login_name   = "DATA_ANALYST"
  first_name   = "Elite"
  last_name    = "DataAnalyst"
  password     = data.aws_ssm_parameter.snowflake_password.value
  comment      = "Data analyst user"
  display_name = "Elite Data Analyst"
  disabled     = var.disabled

  default_warehouse = module.data_analyst_wh.name
  default_role      = snowflake_account_role.data_analyst.name

  must_change_password = var.must_change_password
  disable_mfa          = var.disable_mfa
}

module "airflow_user" {
  source = "../modules/user"

  name         = "AIRFLOW_USER"
  login_name   = "AIRFLOW_USER"
  first_name   = "Airflow"
  last_name    = "Service"
  password     = data.aws_ssm_parameter.snowflake_password.value
  comment      = "Airflow service account"
  display_name = "Airflow User"
  disabled     = var.disabled

  default_warehouse = module.airflow_wh.name
  default_role      = snowflake_account_role.airflow_role.name

  must_change_password = var.must_change_password
  disable_mfa          = var.disable_mfa
}
