env                      = "prod"
zone_id                  = "Z049695610O5R6V4I48RH"
port_no_of_node_exporter = "9100"

components = {
  mysql = {
    instance_type  = "t3.medium"
    name           = "mysql"
    port_no        = "3306"
    port_no_of_ssh = "22"
  }

  backend = {
    instance_type  = "t3.medium"
    name           = "backend"
    port_no        = "8080"
    port_no_of_ssh = "22"
  }

  frontend = {
    instance_type  = "t3.micro"
    name           = "frontend"
    port_no        = "80"
    port_no_of_ssh = "22"
  }
}


prometheus_server = ["172.31.1.69/32"]