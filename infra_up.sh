#!/bib/bash
###### This script is to install vpc, security group and jenkins master modules #######
########  install vpc module ######
echo "provisioning vpc module....."
sleep 2
cd vpc_module
terraform init
terraform apply --auto-approve
########  install security group module ######
echo "provisioning security group module....."
sleep 2
cd ../sg-module
terraform init
terraform apply --auto-approve
########  install jenkins master module ######
echo "provisioning jenkins master module....."
sleep 2
cd ../jenkins-module
terraform init
terraform apply --auto-approve
########  install bastion host ################
echo "provisioning bastion host....."
sleep 2
cd ../bastion-module
terraform init
terraform apply --auto-approve
#################################################