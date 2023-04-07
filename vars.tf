variable "env" {}
variable "engine" {}
variable "engine_version" {}
variable "instance_class" {}
variable "db_name" {
  default = "dummy"
}
variable "backup_retention_period" {}
variable "preferred_backup_window" {}
variable "subnet_ids" {}
variable "tags" {}