
# output "Kube_contexts" {
#   value = "All clusters have been authenticated to. Use the following command to see the context you want to use: kubectl config get-contexts. To switch contect use: kubectl config use-context <conetxt-name>"
# }

// Auth to k8s cluster 
output "gcloud_connect_command" {
  value = "gcloud container clusters get-credentials ${module.Cluster_GKE.cluster_name} --zone ${module.Cluster_GKE.gcp_zone} --project ${module.Cluster_GKE.gcp_project}"
}

output "aws_connect_command" {
     value =  "aws eks --region ${module.Cluster_EKS.aws_region} update-kubeconfig --name ${module.Cluster_EKS.cluster-name}"
}