locals {
  system_name = "example"
}

locals {
  environment_name = {
    prod    = "prd"
    staging = "stg"
    dev     = "dev"
  }
}
