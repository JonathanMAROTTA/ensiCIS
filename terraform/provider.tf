provider "aws" {
  region     = var.region
  # access_key = module.hcp_vault.aws_access_key
  # secret_key = module.hcp_vault.aws_secret_key
  # token      = module.hcp_vault.aws_token
}


provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_ca_certificate)
  token                  = data.aws_eks_cluster_auth.eks.token
}
