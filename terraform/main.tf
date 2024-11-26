module "vpc" {
  source = "./modules/vpc"
}

module "security" {
  source = "./modules/security"
  vpc_id = module.vpc.vpc_id
}

module "hcp_vault" {
  source = "./modules/hcp-vault"
}

data "aws_caller_identity" "current" {}

module "eks" {
  source         = "./modules/eks"
  cluster_name   = var.cluster_name
  desired_size   = var.desired_size
  max_size       = var.max_size
  min_size       = var.min_size
  node_instance_type = var.node_instance_type
  node_role_arn  = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/LabRole"
  subnet_ids     = module.vpc.subnet_ids
}

terraform {
  backend "s3" {
    bucket         = "cis-my-tfstate-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    # dynamodb_table = module.state_backend.dynamodb_table_name # Not enough permissions to create this
  }
}