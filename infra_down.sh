#!/bib/bash
###### This script is to tear down vpc, security group and jenkins master modules #######
########  destroy jenkins master module ######
echo "destroying jenkins master module....."
sleep 2
cd jenkins-master-module
terraform init
terraform destroy --auto-approve
rm -rf .terraform*
########  destroy security group module ######
echo "destroying security group module....."
sleep 2
cd ../sg-module
terraform init
terraform destroy --auto-approve
rm -rf .terraform*
########  destroy vpc module ###############
echo "destroying vpc module....."
sleep 2
cd ../vpc_module
terraform init
terraform destroy --auto-approve
rm -rf .terraform*
##############################################

