terraform {
  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "= 1.17.1"
    }
  }
}

provider "postgresql" {
  host     = var.postgres_host
  port     = var.postgres_port
  database = var.postgres_admin_database
  username = var.postgres_admin_username
  password = var.postgres_admin_password
  sslmode  = "disable"
}

module "postgres" {
  source = "./postgres"

  database_name               = var.postgres_database
  load_role_name              = var.postgres_load_role_name
  load_role_password          = var.postgres_load_role_password
  transform_role_name         = var.postgres_transform_role_name
  transform_role_password     = var.postgres_transform_role_password
  visualisation_role_name     = var.postgres_visualisation_role_name
  visualisation_role_password = var.postgres_visualisation_role_password
}
