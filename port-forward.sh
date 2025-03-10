kubectl port-forward svc/argo-workflows-server -n argo 2746:2746 &
kubectl -n argo-events port-forward svc/webhook-eventsource-svc 12000:12000 &
kubectl -n keycloak port-forward svc/keycloak-svc 8080:8080 &
