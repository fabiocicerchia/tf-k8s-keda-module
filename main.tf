module "keda" {
  source = "./modules/keda"

  kubeconfig_path = var.kubeconfig_path
  release_name    = var.release_name
  namespace       = var.namespace
  values          = var.values
  deploy_example  = var.deploy_example
  manifest_path   = var.manifest_path
  chart_version   = var.chart_version
}
