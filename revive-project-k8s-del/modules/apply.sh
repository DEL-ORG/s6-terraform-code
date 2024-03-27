#!/bib/bash
###### This script allow us to provision controlplane, node group, cluster auth, namespaces, ...  #######

########  provision eks-controlplane module ######
echo "provisioning eks-control-plane....."
sleep 2
cd ./eks-control-plane
terraform init
terraform apply --auto-approve
########  provision eks-blue-green-node-group module ######
echo "provisioning eks-blue-green-node-group....."
sleep 2
cd ../eks-blue-green-node-group
terraform init
terraform apply --auto-approve
########  provision aws-auth-config module ######
echo "provisioning aws-auth-config....."
sleep 2
cd ../aws-auth-config
terraform init
terraform apply --auto-approve
########  provision eks-namespaces module ######
echo "provisioning eks-namespaces....."
sleep 2
cd ../eks-namespaces
terraform init
terraform apply --auto-approve
########  provision cluster-auto-scaler module ######
echo "provisioning cluster-auto-scaler....."
sleep 2
cd ../cluster-auto-scaler
terraform init
terraform apply --auto-approve
########  provision bastion-host module ######
echo "provisioning bastion-host....."
sleep 2
cd ../bastion-host
terraform init
terraform apply --auto-approve
########  provision aws-ebs-csi-driver module ######
echo "provisioning aws-ebs-csi-driver....."
sleep 2
cd ../aws-ebs-csi-driver
terraform init
terraform apply --auto-approve
########  provision aws-load-balancer-controller module ######
echo "provisioning aws-load-balancer-controller....."
sleep 2
cd ../aws-load-balancer-controller
terraform init
terraform apply --auto-approve
########  provision external-dns module ######
echo "provisioning external-dns....."
sleep 2
cd ../external-dns
terraform init
terraform apply --auto-approve
########  provision aws-secret-manager module ######
echo "provisioning aws-secret-manager....."
sleep 2
cd ../aws-secret-manager
terraform init
terraform apply --auto-approve
########  provision ssl-certificate module ######
# echo "provisioning ssl-certificate....."
# sleep 2
# cd ../ssl-certificate
# terraform init
# terraform apply --auto-approve

