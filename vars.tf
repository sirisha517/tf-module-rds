variable "env" {}
variable "engine" {}
variable "engine_version" {}
variable "database_name" {
  default = "dummy"
}
variable "backup_retention_period" {}
variable "preferred_backup_window" {}
variable "subnet_ids" {}
variable "tags" {}
variable "no_of_instances" {}
variable "instance_class" {}