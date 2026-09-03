resource "snowflake_external_table" "trips_ext" {
  database     = snowflake_database.urban_route_db.name
  schema       = snowflake_schema.bronze.name
  name         = "TRIPS"
  comment      = "External table of trip JSON files stored in S3."
  location     = "@${snowflake_stage_external_s3.urban_route_stage.name}/telemetry/trips"
  file_format  = "FORMAT_NAME = ${snowflake_database.urban_route_db.name}.${snowflake_schema.bronze.name}.${snowflake_file_format.json_data.name}"
  auto_refresh = true

  column {
    name = "TRIP_ID"
    type = "VARCHAR"
    as   = "VALUE:trip_id::VARCHAR"
  }

  column {
    name = "USER_ID"
    type = "VARCHAR"
    as   = "VALUE:user_id::VARCHAR"
  }

  column {
    name = "VEHICLE_ID"
    type = "VARCHAR"
    as   = "VALUE:vehicle_id::VARCHAR"
  }

  column {
    name = "START_TIME"
    type = "TIMESTAMP_NTZ"
    as   = "VALUE:start_time::TIMESTAMP_NTZ"
  }

  column {
    name = "END_TIME"
    type = "TIMESTAMP_NTZ"
    as   = "VALUE:end_time::TIMESTAMP_NTZ"
  }

  column {
    name = "START_STATION_ID"
    type = "VARCHAR"
    as   = "VALUE:start_station_id::VARCHAR"
  }

  column {
    name = "END_STATION_ID"
    type = "VARCHAR"
    as   = "VALUE:end_station_id::VARCHAR"
  }

  column {
    name = "DISTANCE_METERS"
    type = "NUMBER"
    as   = "VALUE:distance_meters::NUMBER"
  }

  column {
    name = "DURATION_SECONDS"
    type = "NUMBER"
    as   = "VALUE:duration_seconds::NUMBER"
  }

}
