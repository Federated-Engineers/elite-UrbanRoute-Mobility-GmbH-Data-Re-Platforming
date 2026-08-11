
resource "snowflake_grant_privileges_to_account_role" "analyst_wh" {
  privileges        = ["USAGE"]
  account_role_name = snowflake_account_role.data_analyst.name
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = module.data_analyst_wh.name
  }
}

resource "snowflake_grant_privileges_to_account_role" "analyts_db_usage" {
  privileges        = ["USAGE"]
  account_role_name = snowflake_account_role.data_analyst.name
  on_account_object {
    object_type = "DATABASE"
    object_name = snowflake_database.urban_route_db.name
  }
}

resource "snowflake_grant_privileges_to_account_role" "analyts_db_usage_test" {
  privileges        = ["USAGE"]
  account_role_name = snowflake_account_role.data_analyst.name
  on_account_object {
    object_type = "DATABASE"
    object_name = snowflake_database.urban_route_test_db.name
  }
}

resource "snowflake_grant_privileges_to_account_role" "data_analyst_prod" {
  privileges        = ["USAGE"]
  account_role_name = snowflake_account_role.data_analyst.name
  on_schema {
    schema_name = snowflake_schema.prod.fully_qualified_name
  }
}

resource "snowflake_grant_privileges_to_account_role" "data_analyst_prod_table" {
  privileges        = ["SELECT", "INSERT"]
  account_role_name = snowflake_account_role.data_analyst.name
  on_schema_object {
    all {
      object_type_plural = "TABLES"
      in_schema          = snowflake_schema.prod.fully_qualified_name
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "data_analyst_silver_view" {
  privileges        = ["SELECT"]
  account_role_name = snowflake_account_role.data_analyst.name
  on_schema_object {
    all {
      object_type_plural = "VIEWS"
      in_schema          = snowflake_schema.silver.fully_qualified_name
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "data_analyst_dev_view" {
  privileges        = ["SELECT"]
  account_role_name = snowflake_account_role.data_analyst.name
  on_schema_object {
    all {
      object_type_plural = "VIEWS"
      in_schema          = snowflake_schema.dev.fully_qualified_name
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "data_analyst_prod_view" {
  privileges        = ["SELECT"]
  account_role_name = snowflake_account_role.data_analyst.name
  on_schema_object {
    all {
      object_type_plural = "VIEWS"
      in_schema          = snowflake_schema.prod.fully_qualified_name
    }
  }
}
