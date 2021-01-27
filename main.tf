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
  aws_region  = "ap-southeast-2"
}

#MSFT
module "Cluster_AKS" {
  source       = "./Cluster_AKS"
  cluster-name = random_pet.name.id
  appId        = ""
  password     = ""
}

#Google
module "Cluster_GKE" {
  source       = "./Cluster_GKE"
  cluster_name = random_pet.name.id
  gcp_region   = "australia-southeast1"
  gcp_zone     = "australia-southeast1-c"
  gcp_project  = ""
}
