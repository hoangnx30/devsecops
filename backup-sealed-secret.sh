#!/bin/sh

BACK_UP_FOLDER=kubeseal-backup-$(date +"%Y-%m-%d")
mkdir -p $BACK_UP_FOLDER
KUBE_SEALED_NAMESPACE=kube-seal

kubectl get secret -n $KUBE_SEALED_NAMESPACE -l sealedsecrets.bitnami.com/sealed-secrets-key -o yaml >"$BACK_UP_FOLDER/sealed-secrets-keys-backup-$(date +"%Y-%m-%d").yaml"

NAMESPACES=$(kubectl get namespaces -o jsonpath='{.items[*].metadata.name}')

for NS in $NAMESPACES; do
	if kubectl get sealedsecrets -n $NS 2>/dev/null | grep -q .; then
		# Create namespace directory
		mkdir -p "$BACK_UP_FOLDER/$NS"

		# Get all SealedSecrets in the namespace
		SEALED_SECRETS=$(kubectl get sealedsecrets -n $NS -o jsonpath='{.items[*].metadata.name}')

		# Export each SealedSecret to a file
		for SECRET in $SEALED_SECRETS; do
			kubectl get sealedsecrets -n $NS $SECRET -o yaml >"$BACK_UP_FOLDER/$NS/$SECRET.yaml"
			echo "Backed up SealedSecret: $BACK_UP_FOLDER/$NS/$SECRET"
		done
	fi
done
