#!/bin/bash

helm install ingress-nginx . \
  --namespace ingress-nginx --create-namespace
