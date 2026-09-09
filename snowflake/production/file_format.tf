# resource "snowflake_file_format" "json_data" {
#   name        = "JSON_FORMAT"
#   database    = snowflake_database.urban_route_db.name
#   schema      = snowflake_schema.bronze.name
#   format_type = "JSON"
#   comment     = "JSON file format for S3 ingestion"
# }


