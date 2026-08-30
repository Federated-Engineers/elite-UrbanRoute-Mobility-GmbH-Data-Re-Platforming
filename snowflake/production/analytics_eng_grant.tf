resource "snowflake_grant_privileges_to_account_role" "analytics_wh" {
  privileges        = ["USAGE", "MONITOR"]
  account_role_name = snowflake_account_role.analytics_engineer.name
  on_account_object {
    object_type = "WAREHOUSE"
    object_name = module.analytics_engineer_wh.name
  }
}

resource "snowflake_grant_privileges_to_account_role" "analytics_db_usage" {
  privileges        = ["USAGE"]
  account_role_name = snowflake_account_role.analytics_engineer.name
  on_account_object {
    object_type = "DATABASE"
    object_name = snowflake_database.urban_route_db.name
  }
}

resource "snowflake_grant_privileges_to_account_role" "analytics_db_test_usage" {
  privileges        = ["USAGE"]
  account_role_name = snowflake_account_role.analytics_engineer.name
  on_account_object {
    object_type = "DATABASE"
    object_name = snowflake_database.urban_route_test_db.name
  }
}

resource "snowflake_grant_privileges_to_account_role" "analytics_engineer_raw" {
  privileges        = ["USAGE"]
  account_role_name = snowflake_account_role.analytics_engineer.name
  on_schema {
    schema_name = snowflake_schema.raw.fully_qualified_name
  }
}

resource "snowflake_grant_privileges_to_account_role" "analytics_engineer_silver" {
  account_role_name = snowflake_account_role.analytics_engineer.name
  on_schema {
    schema_name = snowflake_schema.silver.fully_qualified_name
  }
  all_privileges = true

}

resource "snowflake_grant_privileges_to_account_role" "analytics_engineer_dev" {
  account_role_name = snowflake_account_role.analytics_engineer.name
  on_schema {
    schema_name = snowflake_schema.dev.fully_qualified_name
  }
  all_privileges = true

}

resource "snowflake_grant_privileges_to_account_role" "raw_table" {
  privileges        = ["SELECT"]
  account_role_name = snowflake_account_role.analytics_engineer.name
  on_schema_object {
    all {
      object_type_plural = "TABLES"
      in_schema          = snowflake_schema.raw.fully_qualified_name
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "silver_table" {
  privileges        = ["SELECT", "INSERT", "UPDATE", "TRUNCATE"]
  account_role_name = snowflake_account_role.analytics_engineer.name
  on_schema_object {
    all {
      object_type_plural = "TABLES"
      in_schema          = snowflake_schema.silver.fully_qualified_name
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "dev_table" {
  privileges        = ["SELECT", "INSERT", "UPDATE", "TRUNCATE"]
  account_role_name = snowflake_account_role.analytics_engineer.name
  on_schema_object {
    all {
      object_type_plural = "TABLES"
      in_schema          = snowflake_schema.dev.fully_qualified_name
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "raw_tables_future_table" {
  privileges        = ["SELECT"]
  account_role_name = snowflake_account_role.analytics_engineer.name
  on_schema_object {
    future {
      object_type_plural = "TABLES"
      in_schema          = snowflake_schema.raw.fully_qualified_name
    }
  }
}


resource "snowflake_grant_privileges_to_account_role" "silver_tables_future_table" {
  privileges        = ["SELECT", "INSERT", "UPDATE", "TRUNCATE"]
  account_role_name = snowflake_account_role.analytics_engineer.name
  on_schema_object {
    future {
      object_type_plural = "TABLES"
      in_schema          = snowflake_schema.silver.fully_qualified_name
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "dev_tables_future_table" {
  privileges        = ["SELECT", "INSERT", "UPDATE", "TRUNCATE"]
  account_role_name = snowflake_account_role.analytics_engineer.name
  on_schema_object {
    future {
      object_type_plural = "TABLES"
      in_schema          = snowflake_schema.dev.fully_qualified_name
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "silver_view" {
  privileges        = ["SELECT"]
  account_role_name = snowflake_account_role.analytics_engineer.name
  on_schema_object {
    all {
      object_type_plural = "VIEWS"
      in_schema          = snowflake_schema.silver.fully_qualified_name
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "dev_view" {
  privileges        = ["SELECT"]
  account_role_name = snowflake_account_role.analytics_engineer.name
  on_schema_object {
    all {
      object_type_plural = "VIEWS"
      in_schema          = snowflake_schema.dev.fully_qualified_name
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "silver_future_view" {
  privileges        = ["SELECT"]
  account_role_name = snowflake_account_role.analytics_engineer.name

  on_schema_object {
    future {
      object_type_plural = "VIEWS"
      in_schema          = snowflake_schema.silver.fully_qualified_name
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "dev_future_view" {
  privileges        = ["SELECT"]
  account_role_name = snowflake_account_role.analytics_engineer.name

  on_schema_object {
    future {
      object_type_plural = "VIEWS"
      in_schema          = snowflake_schema.dev.fully_qualified_name
    }
  }
}
