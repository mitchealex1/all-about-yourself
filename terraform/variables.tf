variable "postgres_host" {
  type        = string
  description = "The host that the postgres instance is running on"
}

variable "postgres_port" {
  type        = number
  description = "The port that the postgres instance is running on"
}

variable "postgres_admin_database" {
  type        = string
  description = "The name of the default admin db"
}

variable "postgres_admin_username" {
  type        = string
  description = "The name of the postgres admin"
}

variable "postgres_admin_password" {
  type        = string
  description = "The password of the postgres admin"
}

variable "postgres_database" {
  type        = string
  description = "The name of the core database"
}

variable "postgres_load_role_name" {
  type        = string
  description = "The name of the role used for loading data"
}

variable "postgres_load_role_password" {
  type        = string
  sensitive   = true
  description = "The password of the role used for loading data"
}

variable "postgres_transform_role_name" {
  type        = string
  description = "The name of the role used for transforming data"
}

variable "postgres_transform_role_password" {
  type        = string
  sensitive   = true
  description = "The password of the role used for transforming data"
}

variable "postgres_visualisation_role_name" {
  type        = string
  description = "The name of the role used for visualising data"
}

variable "postgres_visualisation_role_password" {
  type        = string
  sensitive   = true
  description = "The password of the role used for visualising data"
}
