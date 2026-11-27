module "inventario" {
  source = "git::https://github.com/scampos79/terraform-modules-git.git//inventario?ref=v1.1.0"

  servidores = {
    frontend = {
      cpu    = 2
      ram_gb = 4
    }
    db = {
      cpu    = 4
      ram_gb = 32
    }
  }
}
