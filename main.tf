resource "azurerm_linux_web_app" "example" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = var.service_plan_id
  https_only          = var.https_only

  app_settings = {
    PHP_INI_SCAN_DIR = var.php_ini_scan_dir
  }

  site_config {
    ftps_state       = var.ftps_state
    app_command_line = var.app_command_line

    cors {
      allowed_origins = var.cors_allowed_origins
      support_credentials = var.cors_support_credentials
    }

    dynamic "application_stack" {
      for_each = var.current_stack == "docker" ? [1] : []
      content {
        docker_image_name        = var.stack_version
        docker_registry_url      = var.docker_registry_url
        docker_registry_username = var.docker_registry_username
        docker_registry_password = var.docker_registry_password
      }
    }

    dynamic "application_stack" {
      for_each = var.current_stack == "dotnet" ? [1] : []
      content {
        dotnet_version = var.stack_version
      }
    }

    dynamic "application_stack" {
      for_each = var.current_stack == "go" ? [1] : []
      content {
        go_version = var.stack_version
      }
    }

    dynamic "application_stack" {
      for_each = var.current_stack == "java" ? [1] : []
      content {
        java_version = var.stack_version
      }
    }

    dynamic "application_stack" {
      for_each = var.current_stack == "node" ? [1] : []
      content {
        node_version = var.stack_version
      }
    }

    dynamic "application_stack" {
      for_each = var.current_stack == "php" ? [1] : []
      content {
        php_version = var.stack_version
      }
    }

    dynamic "application_stack" {
      for_each = var.current_stack == "python" ? [1] : []
      content {
        python_version = var.stack_version
      }
    }
  }

  lifecycle {
    ignore_changes = [
      site_config[0].app_command_line,
      site_config[0].cors,
    ]
  }
}