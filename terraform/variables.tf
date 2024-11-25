# AWS region
variable "region" {
  default = "us-east-1"
}

# EKS Cluster settings
variable "cluster_name" {
  default = "eks-simple"
}

# Worker node settings
variable "node_instance_type" {
  default = "t3.medium"
}

variable "desired_size" {
  default = 2
}

variable "max_size" {
  default = 3
}

variable "min_size" {
  default = 1
}