resource "postgresql_role" "load_role" {
  name     = var.load_role_name
  login    = true
  password = var.load_role_password
}

resource "postgresql_role" "transform_role" {
  name     = var.transform_role_name
  login    = true
  password = var.transform_role_password
}

resource "postgresql_role" "visualisation_role" {
  name     = var.visualisation_role_name
  login    = true
  password = var.visualisation_role_password
}

resource "postgresql_grant" "transform_role_load_schema_grants" {
  database    = postgresql_database.database.name
  role        = postgresql_role.transform_role.name
  schema      = postgresql_schema.load.name
  object_type = "schema"
  privileges  = ["USAGE"]
}

resource "postgresql_default_privileges" "transform_role_load_table_grants" {
  database    = postgresql_database.database.name
  role        = postgresql_role.transform_role.name
  schema      = postgresql_schema.load.name
  owner       = postgresql_role.load_role.name
  object_type = "table"
  privileges  = ["SELECT"]
}

resource "postgresql_grant" "visualisation_role_info_mart_schema_grants" {
  database    = postgresql_database.database.name
  role        = postgresql_role.visualisation_role.name
  schema      = postgresql_schema.transform_info_mart.name
  object_type = "schema"
  privileges  = ["USAGE"]
}

resource "postgresql_default_privileges" "visualisation_role_info_mart_table_grants" {
  database    = postgresql_database.database.name
  role        = postgresql_role.visualisation_role.name
  schema      = postgresql_schema.transform_info_mart.name
  owner       = postgresql_role.transform_role.name
  object_type = "table"
  privileges  = ["SELECT"]
}

