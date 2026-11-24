variable "subnet_ids" {
  description = "Subnet IDs used by the EKS cluster"
  type        = list(string)
}

variable "node_subnet_ids" {
  description = "Public subnet IDs used by EKS worker nodes for the temporary lab"
  type        = list(string)
}