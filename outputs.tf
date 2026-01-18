output "namespace" {
  description = "The namespace where KEDA is deployed"
  value       = module.keda.namespace
}

output "release_name" {
  description = "The Helm release name of KEDA"
  value       = module.keda.release_name
}

output "version" {
  description = "The version of KEDA deployed"
  value       = module.keda.version
}
