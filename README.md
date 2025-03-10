I'm learning some DevSecOps tools now. That's why I created this repository. 
It's still in progress.... 

It's very messy now...
So I will create the good README later. :D 

But this is my plan.
I will setup a Kubernetes that contains
- Argo Events: Handle event on my Kubernetes cluster. Mostly use to trigger the pipelines.
- Argo Workflows: Handle the event triggered by Argo Events. 
- Argo CD: GitOps tool to handle auto deployment.
- Argo Rollout: To handle deployment by following some deployment strategy like rolling update, canary, blue-green.
- Keycloak: Single sign on for my applications using OAuth2 & user management.
- Grafana & Prometheus: To collect metrics and monitoring... (Keep it view). There are some another tools I wanna try if I can arrange my time like: `fluentbit`, `signoz`, ... If you know another open source tools feel free let me know. 
- SonarQube: Code Quality Gate.
- DefectDojo:  Vulnerability management tool. (KIV)...
- Trivy: 
