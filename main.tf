terraform {
  required_version = ">= 1.4.0"
}

variable "environment" {
  description = "Infrastructure environment"
  type        = string
  default     = "dev"
}

resource "terraform_data" "infrastructure" {
  input = {
    project     = "project11"
    environment = var.environment
    managed_by  = "terraform"
    owner       = "devops-team"
  }
}

output "infrastructure_details" {
  value = terraform_data.infrastructure.output
}
