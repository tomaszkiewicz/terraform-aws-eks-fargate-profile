variable "enabled" {
  type        = bool
  description = "Whether to create the resources. Set to `false` to prevent the module from creating any resources"
  default     = true
}

variable "cluster_name" {
  type        = string
  description = "Cluster name"
}

variable "subnet_ids" {
  description = "Identifiers of private EC2 Subnets to associate with the EKS Fargate Profile. These subnets must have the following resource tag: kubernetes.io/cluster/CLUSTER_NAME (where CLUSTER_NAME is replaced with the name of the EKS Cluster)"
  type        = list(string)
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. `{ Deployed = \"xxxx\" }`"
}

variable "namespace" {
  type        = string
  description = "Kubernetes namespace for selection"
}

variable "labels" {
  type        = map(string)
  description = "Key-value mapping of Kubernetes labels for selection"
  default     = {}
}

variable "override_fargate_profile_name" {
  type        = string
  description =  "Overrides fargate profile name, useful if your cluster name starts with restricted prefix (eks-)"
  default     = ""
}