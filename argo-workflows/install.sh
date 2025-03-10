#!/bin/bash

helm dependency build

helm dependency update

helm install --create-namespace -n argo argo-workflows .