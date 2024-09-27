resource "citrix_application" "published_application" {
  name                    = var.citrix_application_name
  description             = var.citrix_application_description
  published_name          = var.citrix_application_published_name
  application_folder_path = var.citrix_application_folder_path
  installed_app_properties = {
    command_line_arguments  = var.citrix_application_command_line_arguments
    command_line_executable = var.citrix_application_command_line_executable
    working_directory       = var.citrix_application_working_directory
  }
  delivery_groups = var.citrix_deliverygroup_name
  # icon            = aktuell noch zu mühsam, comming soon
  limit_visibility_to_users = var.citrix_application_visibility
  # delivery group priority
  delivery_groups_priority = [
    {
      id       = var.citrix_delivery_group_id
      priority = 0
    },
  ]
}
