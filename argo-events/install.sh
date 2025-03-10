#!/bin/bash

# Add the Argo Helm repository 
helm repo add argo https://argoproj.github.io/argo-helm

# Install Argo Events via helm
helm dependency build

helm dependency update

helm install argo-events . --create-namespace -n argo-events



