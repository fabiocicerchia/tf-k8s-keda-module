terraform {
  required_version = ">= 1.0"
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.0"
    }
  }
}

module "keda" {
  source = "../"

  kubeconfig_path = "~/.kube/config"
  release_name    = "keda"
  namespace       = "keda-system"
  chart_version   = "2.14.0"

  values = yamlencode({
    resources = {
      operator = {
        limits = {
          cpu    = "1"
          memory = "1000Mi"
        }
        requests = {
          cpu    = "100m"
          memory = "100Mi"
        }
      }
      metricsServer = {
        limits = {
          cpu    = "1"
          memory = "1000Mi"
        }
        requests = {
          cpu    = "100m"
          memory = "100Mi"
        }
      }
    }
  })

  deploy_example  = false
  manifest_path   = ""
}
