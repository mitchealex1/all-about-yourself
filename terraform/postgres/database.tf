resource "postgresql_database" "database" {
  name = var.database_name
}

resource "postgresql_schema" "load" {
  name     = "load"
  owner    = postgresql_role.load_role.name
  database = postgresql_database.database.name
}

resource "postgresql_schema" "transform_staged" {
  name     = "stage"
  owner    = postgresql_role.transform_role.name
  database = postgresql_database.database.name
}

resource "postgresql_schema" "transform_data_vault" {
  name     = "data_vault"
  owner    = postgresql_role.transform_role.name
  database = postgresql_database.database.name
}

resource "postgresql_schema" "transform_info_mart" {
  name     = "info_mart"
  owner    = postgresql_role.transform_role.name
  database = postgresql_database.database.name
}
