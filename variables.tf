variable "name" {
    type = string
    description = "value"
}
variable "resource_group_name" {
    type = string
    description = "value" 
}
variable "location" {
    type = string
    description = "value"  
}
variable "service_plan_id" {
    type = string
    description = "value"  
}
variable "application_stack" {
    description = "value"
    type = bool
    default = true
}

variable "ftps_state" {
  type        = string
  description = " Specifies the plan's instance size."
  default     = "FtpsOnly"
}

variable "app_command_line" {
  type        = string
  description = "(optional) describe your variable"
  default     = ""
}
variable "python_version" {
  type        = string
  description = " Is this App Service Plan Reserved. Defaults to false."
}
variable "node_version" {
  type        = string
  description = " Is this App Service Plan Reserved. Defaults to false."
}
