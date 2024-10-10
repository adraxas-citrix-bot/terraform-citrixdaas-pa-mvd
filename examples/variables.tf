# variables.tf

variable "mandant_prefix" {
  description = "mandant prefix"
  type        = string
}

variable "applications" {
  description = "Applikations Variablen"
  type = list(object({
    citrix_apllication_name                    = string
    citrix_apllication_description             = string
    citrix_apllication_published_name          = string
    citrix_application_command_line_arguments  = string
    citrix_application_command_line_executable = string
    citrix_application_working_directory       = string
    citrix_deliverygroup_name                  = list(string)
    citrix_apllication_visibility              = list(string)
    # citrix_application_icon                  = string
  }))
}
