output "get_ip_adress" {
  value = azurerm_container_group.acicontainer.ip_address
  description = "The IP of the new container"
}