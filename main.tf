resource "azurerm_linux_web_app" "example" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = var.service_plan_id
 

  site_config {
    ftps_state = var.ftps_state
    app_command_line = var.app_command_line
    dynamic "application_stack" {
      for_each = var.current_stack == "python" ? [1] : []
      content {
        python_version = var.stack_version
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "node" ? [1] : []
      content {
        node_version = var.stack_version
      } 
    }
    dynamic "application_stack" { 
      for_each = var.current_stack == "docker" ? [1] : []
      content {
        # docker_image = var.docker_image
        docker_image = var.stack_version
        docker_image_tag = "v1.0.0"
      }
      }
    dynamic "application_stack" { 
      for_each = var.current_stack == "dotnet" ? [1] : []
      content {
        dotnet_version = var.stack_version
      }
      }
    dynamic "application_stack" { 
      for_each = var.current_stack == "java" ? [1] : []
      content {
        java_server = var.java_server
        java_server_version = var.stack_version
      }
      }
    dynamic "application_stack" { 
      for_each = var.current_stack == "php" ? [1] : []
      content {
        php_version = var.stack_version
      }
      }
    dynamic "application_stack" { 
      for_each = var.current_stack == "ruby" ? [1] : []
      content {
        ruby_version = var.stack_version
      }
      }
    

  }
}

