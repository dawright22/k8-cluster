terraform {
  required_version = ">= 0.12"
}

resource "random_pet" "name" {
  prefix = "consul"
  length = 1
}

#AWS
module "Cluster_EKS" {
  source       = "./Cluster_EKS"
  cluster-name = random_pet.name.id
  aws_region  = var.aws_region
}

#MSFT
module "Cluster_AKS" {
  source       = "./Cluster_AKS"
  cluster-name = random_pet.name.id
  appId        = var.appId
  password     =  var.password
}

#Google
module "Cluster_GKE" {
  source       = "./Cluster_GKE"
  cluster_name = random_pet.name.id
  gcp_region   = var.gcp_region
  gcp_zone     = var.gcp_zone
  gcp_project  = var.gcp_project
}
