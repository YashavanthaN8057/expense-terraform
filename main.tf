module "frontend" {
  depends_on               = [module.backend]
  source                   = "git::https://github.com/YashavanthaN8057/tf-module-app.git"
  env                      = var.env
  zone_id                  = var.zone_id
  instance_type            = var.components["frontend"]["instance_type"]
  name                     = var.components["frontend"]["name"]
  port_no                  = var.components["frontend"]["port_no"]
  port_no_of_ssh           = var.components["frontend"]["port_no_of_ssh"]
  # token                    = var.token
  # prometheus_server        = var.prometheus_server
  # port_no_of_node_exporter = var.port_no_of_node_exporter
}

module "backend" {
  depends_on               = [module.mysql]
  source                   = "git::https://github.com/YashavanthaN8057/tf-module-app.git"
  env                      = var.env
  zone_id                  = var.zone_id
  instance_type            = var.components["backend"]["instance_type"]
  name                     = var.components["backend"]["name"]
  port_no                  = var.components["backend"]["port_no"]
  port_no_of_ssh           = var.components["backend"]["port_no_of_ssh"]
  # token                    = var.token
  # prometheus_server        = var.prometheus_server
  # port_no_of_node_exporter = var.port_no_of_node_exporter
}

module "mysql" {
  source                   = "git::https://github.com/YashavanthaN8057/tf-module-app.git"
  env                      = var.env
  zone_id                  = var.zone_id
  instance_type            = var.components["mysql"]["instance_type"]
  name                     = var.components["mysql"]["name"]
  port_no                  = var.components["mysql"]["port_no"]
  port_no_of_ssh           = var.components["mysql"]["port_no_of_ssh"]
  # port_no_of_node_exporter = var.port_no_of_node_exporter
  # token                    = var.token
  # prometheus_server        = var.prometheus_server
}