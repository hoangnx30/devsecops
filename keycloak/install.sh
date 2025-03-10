#!/bin/bash

namespace=keycloak

helm dependency build

helm dependency update

helm install --create-namespace -n $namespace keycloak-db . --set postgresql.replicaCount=1
