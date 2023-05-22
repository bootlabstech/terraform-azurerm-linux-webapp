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
variable "current_stack" {
    type = string
    description = "value"
}

variable "stack_version" {
    type = string
    description = "value"
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
# variable "python_version" {
#   type        = string
#   description = " Is this App Service Plan Reserved. Defaults to false."
#   default     = "3.11"
# }
# variable "node_version" {
#   type        = string
#   description = " Is this App Service Plan Reserved. Defaults to false."
#   default     = "22-lts"
# }

variable "java_server" {
  type = string
  description = "docker image" 
  default = "JAVA" 
}

variable "docker_image_tag" {
  type = number
  description = "Tag for docker image"
}
