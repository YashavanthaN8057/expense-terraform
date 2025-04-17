env     = "qa"
zone_id = "Z08061862LBZAM174JIHO"

components = {
  mysql = {
    instance_type  = "t3.micro"
    name           = "mysql"
    port_no        = "3306"
    port_no_of_ssh = "22"
  }

  backend = {
    instance_type  = "t3.micro"
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