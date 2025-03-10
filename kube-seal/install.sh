#!/bin/bash

helm repo add https://bitnami-labs.github.io/sealed-secrets

helm dependency build

helm dependency update

helm install kube-seal . \
  --namespace kube-seal --create-namespace 
