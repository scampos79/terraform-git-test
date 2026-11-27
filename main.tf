module "inventario" {
  source = "git::file:///mnt/vmware-lab/terraform/terraform-modules-git//inventario?ref=v1.1.0"

  servidores = {
    web = {
      cpu    = 2
      ram_gb = 4
    }
    db = {
      cpu    = 4
      ram_gb = 32
    }
  }
}
