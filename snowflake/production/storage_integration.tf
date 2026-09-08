# resource "snowflake_storage_integration_aws" "urban_route_s3_integration" {
#   name                      = "URBAN_ROUTE_S3_INTEGRATION"
#   storage_provider          = "S3"
#   enabled                   = true
#   storage_aws_role_arn      = data.aws_iam_role.elite_snowflake_s3_role.arn
#   storage_allowed_locations = ["s3://urbanroute-telemetry-lake/"]
#   comment                   = "Storage integration for Urban Route Mobility data lake"
# }

# resource "snowflake_stage_external_s3" "urban_route_stage" {
#   name                = "URBAN_ROUTE_STAGE"
#   url                 = "s3://urbanroute-telemetry-lake/"
#   database            = snowflake_database.urban_route_db.name
#   schema              = snowflake_schema.bronze.name
#   storage_integration = snowflake_storage_integration_aws.urban_route_s3_integration.name
#   comment             = "External stage for JSON files"
# }
