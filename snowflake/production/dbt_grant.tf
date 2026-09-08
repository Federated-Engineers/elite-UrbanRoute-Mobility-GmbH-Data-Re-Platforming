# resource "snowflake_grant_privileges_to_account_role" "dbt_wh" {
#   privileges        = ["USAGE"]
#   account_role_name = snowflake_account_role.dbt_role.name
#   on_account_object {
#     object_type = "WAREHOUSE"
#     object_name = module.dbt_wh.name
#   }
# }

# resource "snowflake_grant_privileges_to_account_role" "dbt_db_usage" {
#   privileges        = ["USAGE"]
#   account_role_name = snowflake_account_role.dbt_role.name
#   on_account_object {
#     object_type = "DATABASE"
#     object_name = snowflake_database.urban_route_db.name
#   }
# }

# resource "snowflake_grant_privileges_to_account_role" "dbt_bronze" {
#   privileges        = ["USAGE"]
#   account_role_name = snowflake_account_role.dbt_role.name
#   on_schema {
#     schema_name = snowflake_schema.bronze.fully_qualified_name
#   }
# }

# resource "snowflake_grant_privileges_to_account_role" "dbt_silver" {
#   account_role_name = snowflake_account_role.dbt_role.name
#   on_schema {
#     schema_name = snowflake_schema.silver.fully_qualified_name
#   }
#   all_privileges = true

# }

# resource "snowflake_grant_privileges_to_account_role" "dbt_gold" {
#   account_role_name = snowflake_account_role.dbt_role.name
#   on_schema {
#     schema_name = snowflake_schema.gold.fully_qualified_name
#   }
#   all_privileges = true
# }

# resource "snowflake_grant_privileges_to_account_role" "dbt_bronze_table" {
#   privileges        = ["SELECT"]
#   account_role_name = snowflake_account_role.dbt_role.name
#   on_schema_object {
#     all {
#       object_type_plural = "TABLES"
#       in_schema          = snowflake_schema.bronze.fully_qualified_name
#     }
#   }
# }

# resource "snowflake_grant_privileges_to_account_role" "dbt_silver_table" {
#   privileges        = ["SELECT", "INSERT", "UPDATE"]
#   account_role_name = snowflake_account_role.dbt_role.name
#   on_schema_object {
#     all {
#       object_type_plural = "TABLES"
#       in_schema          = snowflake_schema.silver.fully_qualified_name
#     }
#   }
# }

# resource "snowflake_grant_privileges_to_account_role" "dbt_gold_table" {
#   privileges        = ["SELECT", "INSERT", "UPDATE"]
#   account_role_name = snowflake_account_role.dbt_role.name
#   on_schema_object {
#     all {
#       object_type_plural = "TABLES"
#       in_schema          = snowflake_schema.gold.fully_qualified_name
#     }
#   }
# }

# resource "snowflake_grant_privileges_to_account_role" "dbt_bronze_tables_future_table" {
#   privileges        = ["SELECT"]
#   account_role_name = snowflake_account_role.dbt_role.name
#   on_schema_object {
#     future {
#       object_type_plural = "TABLES"
#       in_schema          = snowflake_schema.bronze.fully_qualified_name
#     }
#   }
# }


# resource "snowflake_grant_privileges_to_account_role" "dbt_silver_tables_future_table" {
#   privileges        = ["SELECT", "INSERT", "UPDATE", "TRUNCATE"]
#   account_role_name = snowflake_account_role.dbt_role.name
#   on_schema_object {
#     future {
#       object_type_plural = "TABLES"
#       in_schema          = snowflake_schema.silver.fully_qualified_name
#     }
#   }
# }

# resource "snowflake_grant_privileges_to_account_role" "dbt_gold_tables_future_table" {
#   privileges        = ["SELECT", "SELECT", "INSERT", "UPDATE"]
#   account_role_name = snowflake_account_role.dbt_role.name
#   on_schema_object {
#     future {
#       object_type_plural = "TABLES"
#       in_schema          = snowflake_schema.gold.fully_qualified_name
#     }
#   }
# }

# resource "snowflake_grant_privileges_to_account_role" "dbt_silver_view" {
#   privileges        = ["SELECT"]
#   account_role_name = snowflake_account_role.dbt_role.name
#   on_schema_object {
#     all {
#       object_type_plural = "VIEWS"
#       in_schema          = snowflake_schema.silver.fully_qualified_name
#     }
#   }
# }

# resource "snowflake_grant_privileges_to_account_role" "dbt_silver_future_view" {
#   privileges        = ["SELECT"]
#   account_role_name = snowflake_account_role.dbt_role.name

#   on_schema_object {
#     future {
#       object_type_plural = "VIEWS"
#       in_schema          = snowflake_schema.silver.fully_qualified_name
#     }
#   }
# }

# resource "snowflake_grant_privileges_to_account_role" "dbt_gold_view" {
#   privileges        = ["SELECT"]
#   account_role_name = snowflake_account_role.dbt_role.name
#   on_schema_object {
#     all {
#       object_type_plural = "VIEWS"
#       in_schema          = snowflake_schema.gold.fully_qualified_name
#     }
#   }
# }

# resource "snowflake_grant_privileges_to_account_role" "dbt_gold_future_view" {
#   privileges        = ["SELECT"]
#   account_role_name = snowflake_account_role.dbt_role.name

#   on_schema_object {
#     future {
#       object_type_plural = "VIEWS"
#       in_schema          = snowflake_schema.gold.fully_qualified_name
#     }
#   }
# }