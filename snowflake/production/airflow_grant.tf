resource "snowflake_grant_privileges_to_account_role" "airflow_wh" {
  privileges        = ["USAGE"]
  account_role_name = snowflake_account_role.airflow_role.name
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = module.airflow_wh.name
  }
}

resource "snowflake_grant_privileges_to_account_role" "airflow_db_usage" {
  privileges        = ["USAGE"]
  account_role_name = snowflake_account_role.airflow_role.name
  on_account_object {
    object_type = "DATABASE"
    object_name = snowflake_database.urban_route_db.name
  }
}

resource "snowflake_grant_privileges_to_account_role" "airflow_role_bronze" {
  privileges        = ["USAGE"]
  account_role_name = snowflake_account_role.airflow_role.name
  on_schema {
    schema_name = snowflake_schema.bronze.fully_qualified_name
  }
}

resource "snowflake_grant_privileges_to_account_role" "airflow_bronze_table" {
  privileges        = ["INSERT"]
  account_role_name = snowflake_account_role.airflow_role.name
  on_schema_object {
    all {
      object_type_plural = "TABLES"
      in_schema          = snowflake_schema.bronze.fully_qualified_name
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "airflow_future_bronze_table" {
  privileges        = ["INSERT"]
  account_role_name = snowflake_account_role.airflow_role.name
  on_schema_object {
    future {
      object_type_plural = "TABLES"
      in_schema          = snowflake_schema.bronze.fully_qualified_name
    }
  }
}


resource "snowflake_grant_privileges_to_account_role" "airflow_stage" {
  privileges        = ["USAGE"]
  account_role_name = snowflake_account_role.airflow_role.name
  on_schema_object {
    object_type = "STAGE"
    object_name = snowflake_stage_external_s3.urban_route_stage.fully_qualified_name
  }
}

resource "snowflake_grant_privileges_to_account_role" "airflow_file_format" {
  privileges        = ["USAGE"]
  account_role_name = snowflake_account_role.airflow_role.name
  on_schema_object {
    object_type = "FILE FORMAT"
    object_name = snowflake_file_format.json_data.fully_qualified_name
  }
}
