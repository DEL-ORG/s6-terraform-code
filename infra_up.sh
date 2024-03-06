#!/bib/bash
###### This script is to install vpc, security group and jenkins master modules #######
########  install vpc module ######
echo "installing vpc module....."
sleep 2
cd vpc_module
terraform init
terraform apply --auto-approve
########  install security group module ######
echo "installing security group module....."
sleep 2
cd ../sg-module
terraform init
terraform apply --auto-approve
########  install jenkins master module ######
echo "installing jenkins master module....."
sleep 2
cd ../jenkins-master-module
terraform init
terraform apply --auto-approve
##############################################