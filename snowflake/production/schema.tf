resource "snowflake_schema" "raw" {
  database = snowflake_database.urban_route_db.name
  name     = "RAW"
}

resource "snowflake_schema" "silver" {
  database = snowflake_database.urban_route_db.name
  name     = "SILVER"
}

resource "snowflake_schema" "prod" {
  database = snowflake_database.urban_route_db.name
  name     = "PROD"
}

resource "snowflake_schema" "dev" {
  database = snowflake_database.urban_route_test_db.name
  name     = "DEV"
}
