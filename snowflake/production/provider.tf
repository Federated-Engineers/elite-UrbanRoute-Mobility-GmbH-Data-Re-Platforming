provider "aws" {
  region = "eu-central-1"
}

terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "~> 2.17.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "snowflake" {

  organization_name = "LZWZHVW"
  account_name      = "IH64623"
  user              = "MUSILIADE"
  password          = "Musili_1234567"
  role              = "ACCOUNTADMIN" 

  preview_features_enabled = [
    "snowflake_storage_integration_aws_resource",
    "snowflake_stage_external_s3_resource",
    "snowflake_file_format_resource",
    "snowflake_table_resource"
  ]
}
