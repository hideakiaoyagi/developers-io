module "prefix_list_onpremises" {
  source = "../../modules/prefix_list"

  name    = local.prefix_lists.onpremises.name
  max     = local.prefix_lists.onpremises.max
  entries = local.prefix_lists.onpremises.entries
}

module "prefix_list_administrators" {
  source = "../../modules/prefix_list"

  name    = local.prefix_lists.administrators.name
  max     = local.prefix_lists.administrators.max
  entries = local.prefix_lists.administrators.entries
}