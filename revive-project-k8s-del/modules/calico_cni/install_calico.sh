#!/bin/bash
kubectl apply -f calico.yaml
# # Add Helm repository
# helm repo add gp42 https://ops42.org/helm-charts

# # Update Helm repositories
# helm repo update
# # helm install my-calico-aws gp42/calico-aws --version 0.1.4
