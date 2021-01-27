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
  appId        = "05419517-31a2-48e0-bb47-89924dc8c0d3"
  password     =  "wm-6c1Gg4SxY8tmLB59mQbZss1d84_.mvW"
}

#Google
module "Cluster_GKE" {
  source       = "./Cluster_GKE"
  cluster_name = random_pet.name.id
  gcp_region   = "australia-southeast1"
  gcp_zone     = "australia-southeast1-c"
  gcp_project  = "dwright-gcp-demos"
}
