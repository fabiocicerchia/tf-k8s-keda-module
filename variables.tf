variable "release_name" {
  description = "Helm release name for KEDA"
  type        = string
  default     = "kedacore"
}

variable "namespace" {
  description = "Kubernetes namespace for KEDA"
  type        = string
  default     = "keda"
}

variable "chart_version" {
  description = "KEDA Helm chart version (empty string for latest)"
  type        = string
  default     = ""
}

variable "values" {
  description = "Helm values for KEDA deployment"
  type        = any
  default     = {}
}
