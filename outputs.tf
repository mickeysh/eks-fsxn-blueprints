output "eks_cluster_id" {
  description = "Amazon EKS Cluster Name"
  value       = module.eks_blueprints.eks_cluster_id
}

output "eks_cluster_arn" {
  description = "Amazon EKS Cluster ARN"
  value       = "arn:${data.aws_partition.current.partition}:eks:${data.aws_region.current.id}:${data.aws_caller_identity.current.account_id}:cluster/${module.eks_blueprints.eks_cluster_id}"
}

output "eks_cluster_nodegroup" {
  description = "Amazon EKS Cluster noode group ARN"
  value       = "arn:${data.aws_partition.current.partition}:eks:${data.aws_region.current.id}:${data.aws_caller_identity.current.account_id}:nodegroup/${module.eks_blueprints.eks_cluster_id}"
}

output "eks_cluster_nodegroup_name" {
  description = "Amazon EKS Cluster node group name"
  value       = module.eks_blueprints.managed_node_groups_id[0]
}

output "configure_kubectl" {
  description = "Configure kubectl: make sure you're logged in with the correct AWS profile and run the following command to update your kubeconfig"
  value       = module.eks_blueprints.configure_kubectl
}

output "vpc_id" {
  description = "VPC Id"
  value       = module.aws_vpc.vpc_id
}

output "vpc_cidr" {
  description = "VPC CIDR"
  value       = module.aws_vpc.vpc_cidr_block
}

output "private_subnet_ids" {
  description = "Private Subnet Ids"
  value       = module.aws_vpc.private_subnets
}

output "public_subnet_ids" {
  description = "Public Subnet Ids"
  value       = module.aws_vpc.public_subnets
}


output "fsxnip" {
  description = "FSxN filesystem management address"
  value = aws_fsx_ontap_file_system.fsxnassets.endpoints[0].management[0].ip_addresses
}

output "fsxnid" {
  description = "FSxN filesystem ID"
  value = aws_fsx_ontap_file_system.fsxnassets.id
}

output "azs" {
  description = "List of availability zones used"
  value       = local.azs
}

output "eks_cluster_security_group_id" {
  description = "EKS Control Plane Security Group ID"
  value       = module.eks_blueprints.cluster_primary_security_group_id
}
