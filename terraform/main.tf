module "vpc" {
  source = "./modules/vpc"
}

module "security" {
  source = "./modules/security"
  vpc_id = module.vpc.vpc_id
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

module "juice_shop_repo" {
  source               = "./modules/ecr_repo"
  repository_name      = "juice-shop"
  image_tag_mutability = "MUTABLE"
  scan_on_push         = true       # Scan for security vulnerabilities
  enable_lifecycle_policy = true
  lifecycle_policy_days   = 30
  tags = {
    Application = "Juice Shop"
  }
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