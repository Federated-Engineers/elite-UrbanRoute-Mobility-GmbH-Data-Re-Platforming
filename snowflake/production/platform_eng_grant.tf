resource "snowflake_grant_privileges_to_account_role" "platform_admin_warehouse" {
  privileges = [
    "OPERATE",
  ]
  account_role_name = snowflake_account_role.platform_admin.name
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = module.platform_admin_wh.name
  }
}

resource "snowflake_grant_privileges_to_account_role" "platform_admin_database" {
  privileges        = ["CREATE DATABASE ROLE"]
  account_role_name = snowflake_account_role.platform_admin.name
  on_account_object {
    object_type = "DATABASE"
    object_name = snowflake_database.urban_route_db.name
  }
}

resource "snowflake_grant_privileges_to_account_role" "platform_admin_database_test" {
  privileges        = ["CREATE DATABASE ROLE"]
  account_role_name = snowflake_account_role.platform_admin.name
  on_account_object {
    object_type = "DATABASE"
    object_name = snowflake_database.urban_route_test_db.name
  }
}

resource "snowflake_grant_ownership" "platform_admin_raw_schema" {
  account_role_name   = snowflake_account_role.platform_admin.name
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = "\"${snowflake_database.urban_route_db.name}\".\"${snowflake_schema.raw.name}\""
  }
}

resource "snowflake_grant_ownership" "platform_admin_silver_schema" {
  account_role_name   = snowflake_account_role.platform_admin.name
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = "\"${snowflake_database.urban_route_db.name}\".\"${snowflake_schema.silver.name}\""
  }
}

resource "snowflake_grant_ownership" "platform_admin_dev_schema" {
  account_role_name   = snowflake_account_role.platform_admin.name
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = "\"${snowflake_database.urban_route_test_db.name}\".\"${snowflake_schema.dev.name}\""
  }
}

resource "snowflake_grant_ownership" "platform_admin_prod_schema" {
  account_role_name   = snowflake_account_role.platform_admin.name
  outbound_privileges = "COPY"
  on {
    object_type = "SCHEMA"
    object_name = "\"${snowflake_database.urban_route_db.name}\".\"${snowflake_schema.prod.name}\""
  }
}
