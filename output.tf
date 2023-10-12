output "public_ip_address" {
  value       = azurerm_public_ip.public_ip.ip_address
  description = "The public IP address of the application load balancer"
}

output "load_balancer_id" {
  value       = azurerm_lb.lb.id
  description = "The ID of the Load Balancer"
}

output "network_security_group_name" {
  value       = azurerm_network_security_group.nsg.name
  description = "The name of the network security group"
}

output "network_security_group_id" {
  value       = azurerm_network_security_group.nsg.id
  description = "The ID of the network security group"
}
