output "cluster_name" {
  description = "Name of the EKS cluster"
  value       = aws_eks_cluster.this.name
}

output "cluster_endpoint" {
  description = "EKS cluster API endpoint"
  value       = aws_eks_cluster.this.endpoint
}

output "node_group_name" {
  description = "Name of the EKS managed node group"
  value       = aws_eks_node_group.eks_nodes.node_group_name
}