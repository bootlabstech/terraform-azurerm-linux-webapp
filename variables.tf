variable "name" {
  type        = string
  description = "The name which should be used for this Windows Windows Web App."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group where the Windows Web App should exist."
}

variable "location" {
  type        = string
  description = "The Azure Region where the Windows Web App should exist.Central India or South India"
}

variable "service_plan_id" {
  type        = string
  description = "The ID of the Service Plan that this Windows App Service will be created in."

}

variable "ftps_state" {
  type        = string
  description = "The State of FTP / FTPS service. Possible values include: AllAllowed, FtpsOnly, Disabled."
  default     = "FtpsOnly"
}

variable "https_only" {
  description = "Force HTTPS only"
  type        = bool
  default     = true
}

variable "app_command_line" {
  type        = string
  description = "The App command line to launch."
  default     = ""
}
variable "php_ini_scan_dir" {
  description = "PHP INI scan directory path"
  type        = string
  default     = ""
}

variable "cors_allowed_origins" {
  description = "List of allowed origins for CORS"
  type        = list(string)
  default     = [
    "https://translate.google.com",
    "https://translate.googleapis.com",
    "https://www.google.com",
    "https://www.gstatic.com",
  ]
}

variable "cors_support_credentials" {
  description = "Whether CORS should support credentials"
  type        = bool
  default     = true
}


variable "current_stack" {
     type = string
     description = " The Application Stack for the Windows Web App. Possible values include dotnet, dotnetcore, node, python, php, and java."
}
variable "stack_version" {
  type        = string
  description = "Version of the selected stack."

}

variable "docker_registry_url" {
  type        = string
  description = "The URL of the container registry where the docker_image_name is located. e.g. https://index.docker.io or https://mcr.microsoft.com. This value is required with docker_image_name."
  default     = "https://mcr.microsoft.com"
}
variable "docker_registry_username" {
  type        = string
  description = "The User Name to use for authentication against the registry to pull the image."
  default     = "admin"

}
variable "docker_registry_password" {
  type        = string
  description = "The User Name to use for authentication against the registry to pull the image."
  default     = "Welcome@1234"

}