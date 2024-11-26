provider "aws" {
  region     = var.region
  access_key = module.hcp_vault.aws_access_key
  secret_key = module.hcp_vault.aws_secret_key
  token      = module.hcp_vault.aws_token
}


provider "kubernetes" {
  host                   = aws_eks_cluster.eks.endpoint
  cluster_ca_certificate = base64decode(aws_eks_cluster.eks.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.eks.token
}
