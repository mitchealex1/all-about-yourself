variable "database_name" {
  type        = string
  description = "The name of the database"
}

variable "load_role_name" {
  type        = string
  description = "The name of the role used for loading data"
}

variable "load_role_password" {
  type        = string
  sensitive   = true
  description = "The password of the role used for loading data"
}

variable "transform_role_name" {
  type        = string
  description = "The name of the role used for transforming data"
}

variable "transform_role_password" {
  type        = string
  sensitive   = true
  description = "The password of the role used for transforming data"
}

variable "visualisation_role_name" {
  type        = string
  description = "The name of the role used for visualising data"
}

variable "visualisation_role_password" {
  type        = string
  sensitive   = true
  description = "The password of the role used for visualising data"
}
