locals {
  subnet_names_prefixes = zipmap(var.subnet_names, var.subnet_prefixes)
}
locals {
  azurerm_subnets = var.use_for_each ? [for s in azurerm_subnet.subnet_for_each : s] : [for s in azurerm_subnet.subnet_count : s]
  azurerm_subnets_name_id_map = {
    for index, subnet in local.azurerm_subnets :
    subnet.name => subnet.id
  }
}
locals{
  azurerm_pip_name_id_map = {
    for index, pip in azurerm_public_ip.pip : 
    pip.name => pip.id
  }
}

locals{
  rg_vnet_name        =   "rg-vnet-${var.usecase}-${var.environment}-${var.region}-001"
  vnet_name           =   "vnet-${var.usecase}-${var.environment}-${var.region}-001"
}