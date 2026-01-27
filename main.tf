resource "helm_release" "keda" {
  name       = var.release_name
  repository = "https://kedacore.github.io/charts"
  chart      = "keda"
  version    = var.chart_version != "" ? var.chart_version : null

  dependency_update = true
  create_namespace  = true
  namespace         = var.namespace
  replace           = true

  values = [yamlencode(var.values)]
}
