terraform {
  required_version = ">= 1.0.0"
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud"
      version = "~> 1.0"
    }
  }
}

provider "genesyscloud" {

}

# 1. Creación de una División para el Contact Center
resource "genesyscloud_auth_division" "soporte_div" {
  name        = "Division-Soporte-DevOps"
  description = "Division creada mediante Terraform para el equipo de soporte"
}

# 2. Creación de una Cola de Atención (Queue)
resource "genesyscloud_routing_queue" "cola_soporte" {
  name        = "Cola_Atencion_Tecnica"
  description = "Cola principal de atencion a clientes VIP"
  
  division_id = genesyscloud_auth_division.soporte_div.id

  acw_wrapup_prompt = "MANDATORY"
  acw_timeout_ms    = 30000
}
