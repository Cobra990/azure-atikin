resource "azurerm_resource_group" "acr-rg" {
  name     = var.acr-rg
  location = var.acr-location
}

# resource "azurerm_container_registry" "acr-name" {
#   name                = var.acr-name
#   location            = var.acr-location
#   resource_group_name = var.acr-rg
#   sku                 = "Basic"
#   admin_enabled       = false
# }

resource "azurerm_container_group" "acicontainer" {
  name                = var.acr-name
  location            = var.acr-location
  resource_group_name = var.acr-rg
 # admin_enabled       = true
  ip_address_type     = "Public"
  os_type             = "Linux"

  container {
    name   = "atikinme"
    image  = "cobra99/azurerm:latest"
    cpu    = 0.5
    memory = 1.5
    ports {
      port     = 80
      protocol = "TCP"
    }
  }
  
}