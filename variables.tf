variable "broker_name" {
  type = string
}

variable "engine_type" {
  type    = string
  default = "RabbitMQ"
}

variable "engine_version" {
  type    = string
  default = "3.8.11"
}

variable "storage_type" {
  type    = string
  default = "ebs"
}

variable "host_instance_type" {
  type    = string
  default = "mq.m5.large"
  # the most cheap type is mq.m5.large on multi az deployment mode, mq.t3.micro is available on SINGLE_INSTANCE deployment mode.
}

variable "deployment_mode" {
  type    = string
  default = "CLUSTER_MULTI_AZ"
}

variable "publicly_accessible" {
  type    = bool
  default = false
}

variable "subnet_ids" {
  type = any # may be one element or multiple depending on deployment_mode attribute
}

variable "security_groups" {
  type    = list(string)
  default = []
}

variable "create_security_group" {
  type    = bool
  default = false
}

variable "auto_minor_version_upgrade" {
  type    = bool
  default = true
}

variable "enable_cloudwatch_logs" {
  type    = bool
  default = false
}

variable "maintenance_window_start_time" {
  type = object({
    mw_day_of_week = string
    mw_time_of_day = string
    mw_time_zone   = string
  })
  default = {
    mw_day_of_week = "SUNDAY"
    mw_time_of_day = "03:00"
    mw_time_zone   = "UTC"
  }
}

variable "username" {
  type = string
}

variable "password" {
  type = string
  # sensitive = true
}

variable "tags" {
  type    = map(any)
  default = {}
}

variable "security_group_name" {
  type    = string
  default = "RabbitMQ security group name."
}

variable "security_group_description" {
  type    = string
  default = "RabbitMQ security group description."
}

variable "vpc_id" {
  type    = string
  default = ""
}

variable "ingress_with_cidr_blocks" {
  type    = list(map(string))
  default = []
}
