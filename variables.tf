variable "name" {
    type = string
    description = " The name which should be used for this Linux Web App."
  
}
variable "resource_group_name" {
    type = string
    description = "The name of the Resource Group where the Linux Web App should exist"
  
}
variable "location" {
    type = string
    description = "The Azure Region where the Linux Web App should exist."
  
}
variable "service_plan_id" {
    type = string
    description = "The ID of the Service Plan that this Linux App Service will be created in."
  
}
variable "application_stack" {
    description = "What kind of application stack is the website"
    type = bool
    default = true
  
}
variable "current_stack" {
    type = string
    description = "Application Tech Stach"
}

variable "stack_version" {
    type = string
    description = "Stack Version"
}

variable "ftps_state" {
  type        = string
  description = "The State of FTP / FTPS service. Possible values include AllAllowed, FtpsOnly, and Disabled."
  default     = "FtpsOnly"
}

variable "app_command_line" {
  type        = string
  description = "The App command line to launch."
}


variable "java_server" {
  type = string
  description = "docker image" 
  default = "JAVA" 
}

variable "docker_image_tag" {
  type = string
  description = "Tag for docker image"
  default = "latest"
}
