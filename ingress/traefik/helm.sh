helm repo add traefik https://containous.github.io/traefik-helm-chart
helm repo update

kubectl create ns traefik

helm upgrade \
  --namespace traefik \
  --install traefik traefik/traefik \
  -f values.yaml

#helm install -f values.yaml traefik traefik/traefik --dry-run > traefik.yaml
