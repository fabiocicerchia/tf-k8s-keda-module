output "keda_namespace" {
  description = "The namespace where KEDA is deployed"
  value       = module.keda.namespace
}

output "keda_release_name" {
  description = "The Helm release name of KEDA"
  value       = module.keda.release_name
}

output "keda_chart_version" {
  description = "The chart version of the deployed KEDA"
  value       = module.keda.chart_version
}
